---
layout: page
title: Sensornetwork
hidden: true
---

## Goals

<!-- INET has support for simulating wireless sensor networks. The devices that make up wireless sensor networks are often power constrained, with low latency and throughput, as compared to WLANs.
There are medium access control (MAC) protocols specifically designed for wireless sensor networks.

INET contains several MAC models which are designed for wireless sensor networks.

<pre>
- INET can be used to simulate wireless sensor networks
- There are macs for that purpose

- About the macs
- The config
- Results
- Then some statistics -->

There are media access control (MAC) protocols designed specifically for wireless sensor networks. INET has several such protocol implementations, aside from IEEE 802.15.4 models. This showcase demonstrates three wireless sensor network MAC protocols with three example simulations of a wireless sensor network. Additionally, it compares the three protocols using some statistics.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/wireless/sensornetwork" target="_blank">`inet/showcases/wireless/sensornetwork`</a>

## The model

V1

The devices that make up wireless sensor networks (WSNs) are often power constrained, and the networks have high latency and low throughput, as compared to WLANs, for example. There are two main categories of MAC protocols for WSNs: time-division multiple access based (TDMA), such as LMAC, and carrier-sense multiple access (CSMA) based, such as BMAC and XMAC.

V2

There are two main categories of MAC protocols for WSNs, according to how the MAC manages when certain nodes can communicate on the channel:

- `Time-division multiple access (TDMA) based`: These protocols assign different time-slots to nodes. Nodes can send messages only in their time slot, thus eliminating contention. Examples of these kind of MAC protocols include example LMAC.
- `Carrier-sense multiple access (CSMA) based`: These protocols use carrier sensing and backoffs to avoid collisions, similarly to IEEE 802.11. Examples include BMAC, SMAC, TMAC, XMAC.

This showcase demonstrates the WSN MAC protocols available in INET: BMAC, LMAC and XMAC. The following sections detail these protocols briefly.

### BMAC

How does it work?

### XMAC

### LMAC

the order should be bmac,xmac,lmac
