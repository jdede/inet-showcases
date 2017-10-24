---
layout: page
title: Crosstalk between adjacent IEEE 802.11 channels
hidden: true
---

## Goals

By default, 802.11 hosts and access points in INET are configured to use the same wifi channel (channel 1.) In reality, however, it is rarely the case. There are many wifi networks at the same location, typically spead out on all channels (especially in the case of 2.4 GHz wifi where there are a low number of channels compared to 5 GHz.) Transmissions on many adjacent channels also overlap in frequency, and can cause crosstalk effects.

INET has support for simulating communication on the different wifi channels, both in the 2.4 GHz and 5 GHz frequency range. This showcase demonstrates using both overlapping and non-overlapping wifi channels in simulations, and how transmissions on different channels interfere with each other. It also describes the available analog signal representation models.

This showcase divides the topic of the simulation of different wifi channels into three cases:

- **Completely overlapping frequency bands**: all nodes communicate on the same wifi channel
- **Independent frequency bands**: nodes communicate on different channels that doesn't affect each other
- **Partially overlapping frequency bands**: nodes communicate on adjacent channels, which interfere with each other

There is a simulation for each case in omnetpp.ini.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/wireless/crosstalk" target="_blank">`inet/showcases/wireless/crosstalk`</a>

## The model

- wifi channels
- signal representation
- the three cases

### Wifi channels

<!--
draft:

2.4 ghz wifi has 11 channels, some bandwidth data, and every 4th channel is independent in
frequency, the others overlap. The same thing looks like how in 5 GHz.

2.4GHz: 22MHz channel bandwidth, 3 non-overlapping channels in US (1,6,11, only 12 channels available), 4 non-overlapping channels in EU (1,5,9,13, 13 channels available, and there is a slight side-lobe overlap.)

5GHz: 20MHz or 40MHz channel bandwidth, many non-overlapping channels.
-->

The 2.4 GHz Wifi range in 802.11g, for example, can use a limited number of channels (13 in the EU.) The bandwidth of transmissions in 802.11g is 20MHz, and channels are spaced 5MHz apart. Thus adjacent channels overlap, and they can suffer from crosstalk effects. There can be a few independent channels, where there is no cross-channel interference, e.g. channels 1, 6, and 11.
Because the low number of channels, the 2.4 GHz wifi range can be overcrowded.





### Analog signal representation

<!--
There are two analog signal representation models in INET. when using scalar, the frequency
bands either completely overlap, or not at all. The dimensional is more detailed, and it can
simulate partially overlapping channels.
-->

The analog signal representation is implemented by the analog models in INET.
INET has various analog signal representation model types. The two main types are **scalar** and **dimensional**. In a scalar representation, the signal is represented by a power level that is constant in both frequency and time, and is described by two values: a center frequency and a bandwidth. Two scalar transmissions can only interfere if the frequency and bandwidth of two transmission are exactly identical. Partially overlapping signals cause an error, completely non-overlapping signals are allowed by the scalar model.) <!--In most 802.11 simulation, scalar representation is adequate. TODO: is this needed?-->

<img class="screen" src="scalar.png">

In a dimensional representation, the signal can have a power level that is not constant in time and frequency. The "shape" of the signal can be specified in both time and frequency with parameters of the analog model. The dimensional representation can accurately model signal interference even in the case of signals that partially overlap in frequency and bandwidth. However, dimensional analog models require more processing power.

<img class="screen" src="dimensional.png">

TODO: radios and radiomediums and transmitters and all that have a scalar and a dimensional version

### Nodes on same wifi channel, completely overlapping frequency bands

TODO: the configurator for the certain simulation and about the scalar/dimensional models

and results

<video autoplay loop controls src="overlapping1.mp4" onclick="this.paused ? this.play() : this.pause();"></video>
<!--internal video recording, animation speed none, playback speed 0.59, zoom 1.69, display message name and message class off, run until #141-->

### Nodes on non-overlapping wifi channels, independent frequency bands

<video autoplay loop controls src="independent2.mp4" onclick="this.paused ? this.play() : this.pause();"></video>
<!--internal video recoding, animation speed none, playback speed 0.59, zoom 1.69, display message name and message class off, run until #159-->

<video autoplay loop controls src="independent_2radiomediums1.mp4" onclick="this.paused ? this.play() : this.pause();"></video>
<!--internal video recording, animation speed none, playback speed 0.59, zoom 1.69, display message name and message class off, run until #129-->

### Nodes on adjacent wifi channels, partially overlapping frequency bands

TODO: this should be done from the angle of wifi channels

so it would be nodes on the same wifi channel

nodes on independent wifi channels

nodes on adjacent wifi channels
