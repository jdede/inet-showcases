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

draft:

2.4 ghz wifi has 11 channels, some bandwidth data, and every 4th channel is independent in
frequency, the others overlap. The same thing looks like how in 5 GHz.

2.4GHz: 22MHz channel bandwidth, 3 non-overlapping channels in US (1,6,11, only 12 channels available), 4 non-overlapping channels in EU (1,5,9,13, 13 channels available, and there is a slight side-lobe overlap.)

5GHz: 20MHz or 40MHz channel bandwidth, many non-overlapping channels.





### Analog signal representation

There are two analog signal representation models in INET. when using scalar, the frequency
bands either completely overlap, or not at all. The dimensional is more detailed, and it can
simulate partially overlapping channels.
