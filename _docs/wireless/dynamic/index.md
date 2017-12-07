---
layout: page
title: Dynamic networks
hidden: true
---

## Goals

<!--
INET has support for simulating dynamic networks, i.e. networks in which nodes can be created
and deleted during the course of the simulation, instead of a static network where the same nodes
are present in the entire course of the simulation.
-->

INET has support for simulating dynamic networks, i.e. networks in which nodes can be created
and deleted during the course of the simulation. This is in contrast to a static network where the same nodes
are present in the entire course of the simulation.

This showcase demonstrates dynamic networks, and contains an example simulation in which wireless nodes are
created, exist for some time, and then they are deleted. While in existence, they move around and send ping request
messages.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/wireless/dynamic" target="_blank">`inet/showcases/wireless/dynamic`</a>

## The model

The `ScenarioManager` module can be used to create and destroy nodes during simulations (it can also change many aspects of the configuration while the simulation is running, but those features are out of scope for this showcase.) The scenario manager module takes an XML script input. The XML script describes the actions to be taken during the course of the simulation, i.e. which parameter should be changed and when, what nodes should be created or deleted and when, etc. (For a more comprehensive description, refer to the <a href="https://omnetpp.org/doc/inet/api-current/neddoc/index.html" target="_blank">ScenarioManager NED documentation</a> in the INET Reference.)

- creating and destroying nodes
- the config
- the results
