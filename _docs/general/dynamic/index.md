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
and deleted during the course of the simulation. This is in contrast to static networks where the same nodes
are present in the entire course of the simulation.

This showcase demonstrates dynamic networks, and contains an example simulation in which wireless nodes are
created, exist for some time, and then they are deleted. While in existence, they move around and send ping request
messages.

INET version: `4.0`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/general/dynamic" target="_blank">`inet/showcases/general/dynamic`</a>

## The model

The `ScenarioManager` module can be used to create and destroy nodes during simulations (it can also change many aspects of the configuration while the simulation is running, but those features are out of scope for this showcase.) The scenario manager module takes an XML script input. The XML script describes the actions to be taken during the course of the simulation, i.e. which parameter should be changed and when, what nodes should be created or deleted and when, etc.

<!-- - creating and destroying nodes
- the config
- the results -->

<!--
TODO:

The ScenarioManager takes an XML config file. This has a <scenario> tag
and the creation and destruction of nodes can be done with the create and delete tag

The `ScenarioManager` executes an XML script. The script shedules events to take place at certain times
during the simulation. It can change module parameters, add or remove connections, change parameters of connections, and create or delete network nodes.

The script contains a `<scenario>` element. Under this element, there can be multiple elements...

So there can be multiple element. Each executes a command, and have a t parameter which specifies the time it should be executed. There is the <at> element which just has the time, and there can be any number of elements under it, which will be executed at the specified time.

The available commands include <set-param>, <connect>, etc.
Nodes are created with the <create-module> element, and deleted with the <delete-module> element

The elements can have various attributes. The create-module has type, parent, submodule.
What are these.

The delete element just needs a module name, and it will delete that module.

Example:

script here

- then about the script used for this configuration
- it creates nodes periodically and destroys them after some time
-->

### The `ScenarioManager` module

The `ScenarioManager` module executes an XML script. The XML script can be specified inline with the `xml()` function, or as an external XML file with the `xmldoc()` function. The script specifies commands to be executed at certain times during the simulation. The commands can change module parameters, add or remove connections,
set connection parameters, create or destroy modules, etc. The XML script contains a `<scenario>` element.
Under this element, there can be multiple elements, which specify the commands. These have attributes. Each command has to specify a time value, at which the command should be executed. Some elements have a `t` attribute to specify the time. The time can be also specified with the `<at>` element. Under the `<at>` element, there can be multiple other elements which will be executed at the time specified by the `<at>` element. (For a more comprehensive description of the `ScenarioManager` and the available commands, refer to the <a href="https://omnetpp.org/doc/inet/api-current/neddoc/index.html?p=inet.common.scenario.ScenarioManager.html" target="_blank">ScenarioManager NED documentation</a> in the INET Reference.)

Modules can be created with the `<create-module>` element. This has three attributes:

- `type`: specifies the NED type of the module to be created, in the WHAT notation?
- `submodule`: specifies the name of the module (this name can be used to delete module)
- `parent`: specifies the parent of the module (submodules of existing modules can be created as well)

The created modules will have a random position inside the parent module (or the playground if the parent module is `"."`). <!--However, the scenario can include entries which position the modules.
TODO: is this correct? it doesnt seems so...cant set the position after its created.-->

TODO: the mobility constraints need to be set, otherwise error
why is it need to be set? what happens if a standardHost is created which doesn't have a mobility module by default?
i guess its an error, because if a host has a mobility module but the contraints are not set its an error, and if it doesnt have a mobility module,
the contraints cannot be set.

Modules can be deleted with the `<delete-module>` element. It has just one attribute, `module`, which is the name of the module to be deleted.

Here is an example script:

<!-- ``` {.snippet}
<scenario>
    <at t="10">
        <create-module type="inet.node.inet.WirelessHost" parent="." submodule="someHost"/>
    </at>
    <at t="20">
        <delete-module module="someHost"/>
    </at>
</scenario>
``` -->

<p>
<pre class="include" src="example.xml"></pre>
</p>

This XML script will create a `WirelessHost` named `someHost` in the network at 10 seconds simulation-time, and delete it at 20 seconds simulation-time.

<!-- Note that these elements don't have `t` attributes, thus they have to be placed under an `<at>` element. -->

Note that neither the `<create-module>` nor the `<delete-module>` element has a `t` attribute, thus they have to be placed under an `<at>` element.

The parameters of the dynamically created modules can be set from the ini file, just as with other modules. The configuration of the dynamically created modules will take effect when they are spawn.

TODO: Ipv4NetworkConfigurator cant be used

### The configuration

In the example simulation, there will be a static wireless node acting as a destination for ping requests.
Other wireless nodes will be created periodically, will send ping requests to the destination node, and will be deleted after some time. The example simulation for this showcase uses the following network:

<img class="screen" src="network2.png">

The network contains an `IntegratedCanvasVisualizer`, an `Ieee80211ScalarRadioMedium`, and a `ScenarioManager` module. It also contains a host named `destinationHost`, whose type is `DynamicHost`.

The `DynamicHost` type is defined in the NED file, <a srcfile="wireless/dynamic/DynamicShowcase.ned"/>. It is basically an `AdhocHost`, but it is configured to use a per-host `HostAutoConfigurator` module instead of the global `IPv4NetworkConfigurator`. The reason for this is that `Ipv4NetworkConfigurator` doesn't support IP address assignment in dynamic scenarios. Here is the NED definition of `DynamicHost`:

<p>
<pre class="snippet" src="DynamicShowcase.ned" from="DynamicHost" until="DynamicShowcase"></pre>
</p>

The `contraintArea` parameters in all hosts' mobility modules are set to confine the position of the newly created nodes to the playground:

<p>
<pre class="snippet" src="omnetpp.ini" from="MinX" upto="MaxZ"></pre>
</p>

The nodes are created at a random position, constrained by the mobility settings

TODO: autoconfigurator settings
TODO: script xmldoc

TODO: what if there isnt any mobility modules? actually, the wirelesshost and derivatives

The created node's mobility settings

- the scenario
- results

## Results

<video autoplay loop controls src="General1.mp4" onclick="this.paused ? this.play() : this.pause();"></video>
