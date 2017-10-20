---
layout: page
title: Crosstalk between adjacent IEEE 802.11 channels
hidden: true
---

## Goals

By default, 802.11 hosts and access points in INET are configured to use the same wifi channel (channel 1.) In reality, however, it is rarely the case. There are many wifi networks at the same location, typically spead out on all channels (especially in the case of 2.4 GHz wifi where there are a low number of channels compared to 5 GHz.) Transmissions on many adjacent channels also overlap in frequency, and can cause crosstalk effects.

INET has support for simulating communication on the different wifi channels, both in the 2.4 GHz and 5 GHz frequency range. This showcase demonstrates using both overlapping and non-overlapping wifi channels in simulations, and how transmissions on different channels interfere with each other. It also describes the available analog signal representation models.

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

The 2.4 GHz Wifi range in 802.11g, for example, can use a limited number of channels (13 in the EU and 12 the US.) The bandwidth of transmissions in 802.11g is 22MHz, and channels are spaced 5MHz apart. Thus adjacent channels can suffer from crosstalk effects. There can be a few independent channels, where there is no cross-channel interference, e.g. channels 1, 6, and 11.
Because the low number of channels, the 2.4 GHz wifi range can be overcrowded.





### Analog signal representation

<!--
There are two analog signal representation models in INET. when using scalar, the frequency
bands either completely overlap, or not at all. The dimensional is more detailed, and it can
simulate partially overlapping channels.
-->

The analog signal representation is implemented by the analog models in INET.
INET has various analog signal representation model types. The two main types are **scalar** and **dimensional**. In a scalar representation, the signal is represented a power level that is constant in both frequency and time, and it has a center frequency and a bandwidth. Two scalar transmissions can only interfere if the frequency and bandwidth of two transmission are exactly identical (partially overlapping signals cause an error.) <!--In most 802.11 simulation, scalar representation is adequate. TODO: is this needed?-->

<img class="screen" src="scalar.png">

In a dimensional representation, the signal can a power level that is not constant in time and frequency. The dimensional representation can accurately compute signal interference even in the case of signals that partially overlap in frequency and bandwidth. However, dimensional radio models require more processing power.

<img class="screen" src="dimensional.png">

## Completely overlapping frequency bands

## Partially overlapping frequency bands

## Independent frequency bands

TODO: this should be done from the angle of wifi channels

so it would be nodes on the same wifi channel

nodes on independent wifi channels

nodes on adjacent wifi channels
