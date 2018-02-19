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

TODO
Frequency bands, topologies, ffd's and rfd's...is that needed here?
Also, the available inet implementations...maybe that shouldnt be here

INET has the following IEEE 802.15.4 models available:

INET has a narrowband and an ultra-wideband IEEE 802.15.4 physical layer implementation. The narrow band version uses the DSSS-OQPSK modulation, the modules are `Ieee802154Ieee802154NarrowbandScalarRadio`, and `Ieee802154NarrowbandScalarRadioMedium`. The ultra-wideband implementation modules are `Ieee802154UwbIrRadio` and `Ieee802154UwbIrRadioMedium`.

TODO:
they have sensible defaults, by default operating on 2.45 GHz, 2.8 MHz bandwidth, 250 kbps, 2.24 mW transmission power. The uwbir has what parameters and defaults ? except for none. By the way, its operating on 4.5 GHz, 500 MHz bandwidth, 850 kbps data rate.
The narrowband version is scalar, the uwbir version is dimensional -> actually, it makes sense,
because the uwbir version occupies a lot of the spectrum

 
