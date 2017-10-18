---
layout: page
title: Crosstalk between adjacent IEEE 802.11 channels
hidden: true
---

By default, 802.11 hosts and access points in INET are configured to use the same wifi channel (channel 1.) In reality, however, it is rarely the case. There are many wifi networks, typically spead out on all channels (especially in the case of 2.4 GHz wifi where there are a low number of channels compared to 5 GHz.) Transmissions on many adjacent channels also overlap in frequency, and can cause crosstalk effects.

INET has support for simulating communication on the different wifi channels, both in the 2.4 GHz and 5 GHz frequency range. This showcase demonstrates using both overlapping and non-overlapping wifi channels in simulations, and describes the available analog signal representation models.
