---
layout: page
title: PCAP Recording
hidden: true
---

## Goals

INET has support for recording pcap traces from simulations. The recording
process produces pcap files that are similar to real world pcap traces,
so one can use the same tools and techniques for analyzing simulated traffic as used on real traffic, such as Wireshark and TCPDump. Knowledge of pcap can be reused in the context of simulations.

This showcase contains an example simulation, which generates and records TCP, UDP, and ICMP
traffic, using various protocols like ethernet and 802.11.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/wireless/pcaprecording" target="_blank">`inet/showcases/wireless/pcaprecording`</a>

## The model

In order to record pcap traces in a node, a `PcapRecorder` module needs to be included in the node.
Pcap recorder modules can be easily included in hosts and routers by specifying the `numPcapRecorders` parameter (available in modules that extend `LinkLayerNodeBase`, such as  `StandardHost` and derivatives, and router modules.)

The pcap recorder module records L2 frames sent to and from modules in the same host.
The module records packets containing IPv4 packets (packets not containing IPv4 packets are discarded.) It writes traces in a pcap file, which has to be specified by the `ṗcapFile` parameter.
Specifying this parameter enables packet capture. The pcap recorder module also creates TCPDump-like output on the module log, if the `verbose` parameter is set to `true`.
The pcap file's link layer header type needs to be set with the `pcapNetwork` parameter in order to produce meaningful traces. The most important type codes are the following:

- ethernet: 1
- 802.11: 105
- ppp: 204

The modules to record can be specified by the `moduleNamePatterns` parameter, which takes
a space separated list of module names. For selecting a module vector, `[*]` can be used. The recorded modules are same level as the pcap recorder module. The default value for the `moduleNamePatterns` parameter is `wlan[*] eth[*] ppp[*] ext[*]`.

TODO: dumpProtocols?, alwaysFlush?, dumpBadFrames?

### The configuration

The example simulation for this showcase contains wired and wireless hosts, and routers.
The hosts are configured to generate TCP, UDP and ICMP traffic. The hosts connect to routers
via ethernet, the connection between the routers is ppp. The wireless hosts communicate via 802.11.
The simulation can be run by choosing the `PcapRecording` configuration from the ini file.
The simulation uses the following network:

<img class="screen" src="network.png">

The network contains two `adhocHost`s named `host1` and `host2`, and two `StandardHost`s named `ethHost1` and `ethHost2`. There are two `Router` modules (`router1` and `router2`), connected by ppp. Each wired host is connected to one of the routers via ethernet.
The network also contains an `IPv4NetworkConfigurator`, an `Ieee80211ScalarRadioMedium`, and an `IntegratedVisualizer` module.

Traffic generation is set up the following way: `host1` is configured to send a UDP stream to `host2`, `ethHost1` is configured to open a TCP connection to `ethHost2`, and send a 1Mbyte file via TCP. `ethHost1` is also configured to ping `ethHost2`.

There are `PcapRecorder` modules added to `host1`, `ethHost1`, and `router1`. The keys in the ini file pertaining to pcap recording configuration are the following:

```
*.host1.numPcapRecorders = 1
*.host1.pcapRecorder[*].pcapNetwork = 105	# 802.11
*.host1.pcapRecorder[*].pcapFile = "results/host1.pcap"

*.ethHost1.numPcapRecorders = 1
*.ethHost1.pcapRecorder[*].pcapNetwork = 1	# ethernet
*.ethHost1.pcapRecorder[*].pcapFile = "results/ethHost1.pcap"

*.router1.numPcapRecorders = 2
*.router1.pcapRecorder[0].pcapNetwork = 204	# ppp
*.router1.pcapRecorder[0].moduleNamePatterns = "ppp[*]"
*.router1.pcapRecorder[0].pcapFile = "results/router1.ppp.pcap"
*.router1.pcapRecorder[1].pcapNetwork = 1	# ethernet
*.router1.pcapRecorder[1].pcapFile = "results/router1.eth.pcap"
*.router1.pcapRecorder[1].moduleNamePatterns = "eth[*]"
```

TODO: dumpProtocols: selects which protocols to dump to the trace
the same thing can be selected with the moduleNamePatterns
this is important if a node has two different kinds of interfaces (like a router might have eth and ppp interfaces)
TODO: more than one pcaprecorder can be added. it has to be if you want to record different
link layer headers


Then the config...how to set it

Then, some results. Screenshots of Wireshark, or TCPDump
