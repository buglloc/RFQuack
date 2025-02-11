!!! warning
    This section is fairly incomplete.

To talk to your RFQuack dongle, you have two options:

- MQTT
- Serial

Let's see the pros and cons of each.

## MQTT Transport

(and hardware serial console)

Install or have access to an MQTT broker (Mosquitto is just perfect for this):

- PROs
  - you don't need cables (hint: your RFQuack hardware can be battery powered)
  - if you want to connect the RFQuack hardware to your computer, you get a free (hardware) serial console for monitoring on the USB port
- CONs
  - you need network connectivity (WiFi or cellular)
  - there's latency

## Serial Transport

Connect the dongle via USB

- PROs
  - there's little latency
  - you don't need to rely on network stability

- CONs
  - your range is limited by the length of your USB cable (you don't say! 😮)

## Command Line Interface

Now you can use RFQuack via the IPython-based shell.

### Test the Shell

```shell
$ rfq --help
Usage: rfq [OPTIONS] COMMAND [ARGS]...

Options:
  -l, --loglevel [CRITICAL|ERROR|WARNING|INFO|DEBUG|NOTSET]
  -h, --help                      Show this message and exit.

Commands:
  mqtt  RFQuack client with MQTT transport.
  tty   RFQuack client with serial transport.
```

### CLI via MQTT Transport

To use this, you'll have to build a firmware configured to use the MQTT transport. Please check the `USE_MQTT` configuration variable in this manual.

```rfq
$ rfq mqtt --help
Usage: rfq mqtt [OPTIONS]

  RFQuack client with MQTT transport. Assumes one dongle per MQTT broker.

Options:
  -i, --client_id TEXT
  -H, --host TEXT
  -P, --port INTEGER
  -u, --username TEXT
  -p, --password TEXT
  -h, --help            Show this message and exit.
```

### CLI via Serial Transport

This is the default transport, unless `USE_MQTT` is set in the `build.env` file.

```shell
$ rfq tty --help
Usage: rfq tty [OPTIONS]

  RFQuack client with serial transport.

Options:
  -b, --baudrate INTEGER
  -s, --bytesize INTEGER
  -p, --parity [M|S|E|O|N]
  -S, --stopbits [1|1.5|2]
  -t, --timeout INTEGER
  -P, --port TEXT           [required]
  --help                    Show this message and exit.
```

### Examples

More concretely:

```shell
$ rfq tty -P /dev/ttyUSB0
2019-04-10 18:04:31 local RFQuack[20877] INFO Transport initialized
2019-04-10 18:04:31 local RFQuack[20877] INFO Transport initialized (QoS = 2): mid = 2

...

RFQuack(/dev/ttyUSB0, 115200,8,N,1)> q.radioA.set_modem_config(modulation="OOK", carrierFreq=434.437)

result = 0
message = 2 changes applied and 0 failed.

RFQuack(/dev/ttyUSB0, 115200,8,N,1)> q.radioA.rx()

result = 0
message =
...
```

At this point you're good to go from here!

### Inline Help

```shell
RFQuack(/dev/cu.usbserial-0001)> q.radioA.help()
Help for 'radioA':

> q.radioA.set_modem_config(rfquack_ModemConfig)
        Apply configuration to modem.

> q.radioA.set_packet_len(rfquack_PacketLen)
        Set packet length configuration (fixed/variable).

> q.radioA.set_register(rfquack_Register)
        Sets register on underlying modem.

> q.radioA.get_register(rfquack_UintValue)
        Retrieve register value from underlying modem.

> q.radioA.send_to_transport = ...
        Whatever to send received packets to transport

> q.radioA.send(rfquack_Packet)
        Send a packet over the air

> q.radioA.rx(rfquack_VoidValue)
        Puts modem in RX mode

> q.radioA.tx(rfquack_VoidValue)
        Puts modem in TX mode

> q.radioA.jam(rfquack_VoidValue)
        Starts jamming

> q.radioA.idle(rfquack_VoidValue)
        Puts modem in IDLE mode

Check src/rfquack.proto for type definitions
```
