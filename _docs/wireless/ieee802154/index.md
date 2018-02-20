---
layout: page
title: IEEE 802.15.4
hidden: true
---

## Goals

IEEE 802.15.4 is a widely used standard for wireless sensor networks (WSNs.) INET has support for simulating various IEEE 802.15.4 physical and MAC layers. This showcase demonstrates the available IEEE 802.15.4 models available in INET. It contains one/two example simulation/s which feature wireless sensor networks.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/wireless/ieee802154" target="_blank">`inet/showcases/wireless/ieee802154`</a>

## The model

- about ieee 802154 modes, topology, fdds and rdds
- about the inet implementation
- the scenario
- the configuration

IEEE 802.15.4 is a standard that defines the physical layer and MAC layer of low-rate wireless personal area networks (LR-WPANs). LR-WPANs are low power, low throughput communication networks, which can be used for creating wireless sensor networks (WSNs), Internet-of-things applications, etc.
A brief overview of the standard follows. `TODO: if it turns out to be short, this is not needed`

The IEEE 802.15.4 standard defines multiple physical layer specifications (PHYs), based on different modulations, such as Direct Sequence Spread Spectrum (DSSS), Chirp Spread Spectrum (CSS), Ultra-wideband (UWB). It defines a CSMA-CA or ALOHA MAC-layer protocol as well.

<!-- INET has two IEEE 802.15.4 PHY models, a narrow band version and an ultra-wideband version: `Ieee802154NarrowBandScalarRadio` and `Ieee802154UwbIrRadio`.
The narrow band version uses DSSS-OQPSK modulation, the ultra wide-band version NOPE -->

### About the INET implementation

INET has two IEEE 802.15.4 models:

- `Ieee802154NarrowBandScalarRadio`: A narrow band IEEE 802.15.4 PHY model using DSSS-OQPSK modulation (scalar)
- `Ieee802154UwbIrRadio`: An ultra-wideband IEEE 802.15.4 PHY model (dimensional)

This showcase demonstrates the narrow band version.

The `Ieee802154NarrowBandScalarRadio` is a scalar model. It uses DSSS-OQPSK modulation, and operates at 2450 MHz. By default, the transmissions have a 2.8 MHz bandwidth and 250 kbps data rate, and 2.24 mW transmission power.

`or maybe should start with the interface?`

`more details on the narrow band...defaults, etc...`

<!-- TODO
Frequency bands, topologies, ffd's and rfd's...is that needed here?
Also, the available inet implementations...maybe that shouldnt be here

INET has the following IEEE 802.15.4 models available:

INET has a narrowband and an ultra-wideband IEEE 802.15.4 physical layer implementation. The narrow band version uses the DSSS-OQPSK modulation, the modules are `Ieee802154Ieee802154NarrowbandScalarRadio`, and `Ieee802154NarrowbandScalarRadioMedium`. The ultra-wideband implementation modules are `Ieee802154UwbIrRadio` and `Ieee802154UwbIrRadioMedium`.

TODO:
they have sensible defaults, by default operating on 2.45 GHz, 2.8 MHz bandwidth, 250 kbps, 2.24 mW transmission power. The uwbir has what parameters and defaults ? except for none. By the way, its operating on 4.5 GHz, 500 MHz bandwidth, 850 kbps data rate.
The narrowband version is scalar, the uwbir version is dimensional -> actually, it makes sense,
because the uwbir version occupies a lot of the spectrum

UPDATE:
this showcase only contains the narrow band version -->

<!-- So the structure should be something like this:

- About Ieee 802154
- About the inet implementation...the narrowband, just mention there is an uwbir
some details about them...and more details about the narrowband
- the configuration and the screnario
- results -->








### The INET implementation

INET features a narrow band and an ultra-wideband IEEE 802.15.4 PHY model:

- `Ieee802154NarrowBandScalarRadio`
- `Ieee802154UwbIrRadio`

This showcase demonstrates the narrow band model. `Ieee802154NarrowbandScalarRadio` uses DSSS-OQPSK modulation, and operates at 2.45 GHz. By default, the transmissions have a bandwidth of 2.8 MHz, and 2.24 mW transmission power. `TODO: its scalar`

The `Ieee802154NarrowbandInterface` module contains a `Ieee802154NarrowbandScalarRadio` and the corresponsing `Ieee802154NarrowbandMac`. The radio should be used with `Ieee802154NarrowbandRadioMedium`. `TODO: some defaults...path loss type, etc`

`They have sensible defaults? so no configuration is needed/works out of the box`

### The model

The showcase contains an example simulation, which demonstrates the operation of INET's IEEE 802.15.4 model. The scenario is that wireless nodes are used to control lighting in an appartment. There are sensor nodes in the rooms working as presence sensors, detecting when people are in a room.
They periodically send sensor data to a controller node, which decides adjust the lighting conditions in different rooms. The controller sends control packets to the lamps in the rooms to set their brightness or turn them on and off. All nodes use IEEE 802.15.4 to communicate.
Note that this is not a working simulation of the light control and presence detection, just a mockup based on that scenario.

<!--

- using 802.15.4 wireless nodes to control lighting in an appartment
- there are sensor nodes that work as human presence sensors and periodically send data
to a controller
- the controller decides when to adjust the lighting in the different rooms
- sends control data to the lamps in order to switch them on or off or set the brightness
- they use ieee 802154 to communicate

-->
