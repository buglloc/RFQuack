#ifndef RFQUACK_PROJECT_MODULESDISPATCHER_H
#define RFQUACK_PROJECT_MODULESDISPATCHER_H

#include "../rfquack_common.h"
#include "../rfquack_logging.h"
#include "RFQModule.h"

class ModulesDispatcher {
public:
    /**
     * @brief Dispatches a command received from Transport.
     */
    void executeUserCommand(char *moduleName, char *verb, char **args, uint8_t argsLen,
                            char *messagePayload, uint8_t messageLen) {
      //Debug
      RFQUACK_LOG_TRACE(F("Got command for moduleName: %s, verb: %s, argsLen: %d, messageLen %d"),
                        moduleName, verb, argsLen, messageLen);

      // INFO verb is used when client wants information about current RFQuack supported modules/cmds
      bool isInfo = strncmp(verb, RFQUACK_TOPIC_INFO, strlen(RFQUACK_TOPIC_INFO)) == 0;

      // Redirect the received command to the right module(s).
      for (int i = 0; i < loadedModules; i++) {
        RFQModule *module = this->modules[i];
        if (isInfo || strcmp(moduleName, module->getName()) == 0) {
          module->executeUserCommand(verb, args, argsLen, messagePayload, messageLen);
          if (!isInfo) return;
        }
      }

      if (!isInfo)
        Log.error(F("Module '%s' not found."), moduleName);
    }

    /**
     * Called from the radio driver as soon as a packet is received and before entering RX Queue.
     * This is useful to trash packet before they are stored in RAM or to execute actions soon after
     * a packet is decoded.
     * @param packet
     * @param whichRadio Radio which received the packet (RADIOA or RADIOB)
     * @return whatever to push packet in RX Queue.
     */
    bool onPacketReceived(rfquack_Packet &packet, rfquack_WhichRadio whichRadio) {
      for (int i = 0; i < loadedModules; i++) {
        RFQModule *module = this->modules[i];

        // Notify all modules until a module breaks the chain returning false.
        // Example: A 'filter module' returns false as soon as a packet is not passing the sieve,
        //          the packet will be instantly discharged.
        // Note: Changes to 'packet' will persist across modules.
        if (module->isEnabled() && !module->onPacketReceived(packet, whichRadio)) {
          return false; // Return false, 'module' stopped the chain.
        }
      }

      // No module stopped the chain, every registered module let the packet go on, packet will be stored in RX Queue.
      return true;
    }

    /**
     * Called from the radio driver when a packet is popped from RX Queue.
     * @param packet
     * @param whichRadio Radio which received the packet (RADIOA or RADIOB)
     * @return whatever to send packet to client.
     */
    bool afterPacketReceived(rfquack_Packet &packet, rfquack_WhichRadio whichRadio) {
      for (int i = 0; i < loadedModules; i++) {
        RFQModule *module = this->modules[i];

        // Notify all modules until a module breaks the chain returning false.
        if (module->isEnabled() && !module->afterPacketReceived(packet, whichRadio)) {
          return false; // Return false, 'module' stopped the chain.
        }
      }

      // No module stopped the chain, every registered module let the packet go on.
      return true;
    }


    void registerModule(RFQModule *module) {
      if (loadedModules >= RFQUACK_MAX_MODULES) {
        Log.fatal(F("Too many modules, increase RFQUACK_MAX_MODULES."));
        return;
      }

      // Initialize module
      module->onInit();

      // Save reference to module in order to be able to query it.
      this->modules[loadedModules] = module;

      // Increment the number of loaded modules.
      loadedModules++;
      RFQUACK_LOG_TRACE(F("Module '%s' registered."), module->getName())
    }

private:
    // Array of loaded modules.
    RFQModule *modules[RFQUACK_MAX_MODULES];
    int loadedModules = 0;
};

// Global ModulesDispatcher instance.
ModulesDispatcher modulesDispatcher;

#endif //RFQUACK_PROJECT_MODULESDISPATCHER_H
