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

BMAC (short for Berkeley MAC) is a widely used WSN MAC protocol, it is part of TinyOS. It employs low-power listening (LPL) to minimize power consumption due to idle listening. Nodes have a sleep period, after which they awaken and sense the medium for preambles. If none is detected, the nodes go back to sleep. If there is a preamle, the nodes stay awake and receive the data packet after the preamle. If a node wants to send a message, it first sends a preamle for at least the sleep period in order for all nodes to detect it.
After the preable, it sends the data packet. There is optional acknowledgements as well. When the data packet (or data packet + ACK) is sent/received, the nodes go back to sleep. Note that all nodes receive the preamle and data packet in the communication range of the sender, not just the intended recipient of the data packet.

### XMAC

XMAC is a development of and aims to improve on some of BMAC's problems. In BMAC, the entire preamle is transmitted, regardless of whether the destination node awoke at the beginning of the preamle or at the end. Furthermore, with BMAC, all nodes are receiving both the preamble and the data packet. XMAC employs a strobed preamble, i.e. sending the same lenght preamle as BMAC, but in shorter bursts, with pauses in between. The pauses are long enough that the destination node can send an acknowledgement if it is already awake.
When the senser receives the acknowledgement, it stops the preamble and sends the data packet. Also, the preamle contains the address of the destination node. Other nodes can awaken, receive the preamble, and go back to sleep as the packet is not addressed to them.

### LMAC

LMAC (short for lightweight MAC) is a TDMA-based MAC protocol. There are data transfer frames, which are divided into time-slots. Each node has its own time slot, in which only it can transmit. A transmission consist of a control message and a data unit. The control message contains which node is the destination of the data, and the length of the data unit. All nodes wake up at the beginning of each time-slot. If there are no transmissions, the time-slot is assumed to be empty (not owned by any nodes), and the nodes go back to sleep. If there is a transmission, after receiving the control message, nodes that are not the recipient go back to sleep. The recipient node and the sender node goes back to sleep after receiving/sending the transmission. 

the order should be bmac,xmac,lmac
