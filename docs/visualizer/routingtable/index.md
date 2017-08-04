---
layout: page
title: Visualizing Routing Tables
---

## Goals

In a complex network topology, it is difficult to see how a packet would be routed because the relevant data is scattered among network nodes and hidden in their routing tables. INET contains support for visualization of routing tables, and can display routing information graphically in a concise way. Using visualization, it is often
possible to understand routing in a simulation without looking into individual routing tables. The visualization currently supports IPv4. 

This showcase contains three simulation models of increasing complexity, each demonstrating different features of routing table visualization.

INET version: <var>3.6</var><br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/visualizer/routingtable" target="_blank"><var>inet/showcases/visualizer/routingtable</var></a>
<br/>You can discuss this showcase <a href="https://github.com/inet-framework/inet-showcases/issues/2" target="_blank">on GitHub</a>.

## About the visualizer

In INET, the <var>RoutingTableVisualizer</var> module (included in the network as part of <var>IntegratedVisualizer</var>) is responsible for visualizing routing table entries.

The visualizer basically annotates network links with labeled arrows that connect source nodes to next hop nodes. The module visualizes those routing table entries that participate in the routing of a given set of destination addresses, by default the addresses of all interfaces of all nodes in the network. That is, it selects
the best (longest prefix) matching routes for all destination addresses from each routing table, and shows them
as arrows that point to the next hop. Note that one arrow might need to represent several routing entries,
for example when distinct prefixes are routed towards the same next hop.

Routing table entries are represented visually by solid arrows.
An arrow going from a source node represents a routing table entry in the source node's routing table. The endpoint node of the arrow is the next hop in
the visualized routing table entry.
By default, the routing entry is displayed on the arrows in following format:

<p><div class="include" style="font-family: monospace;">destination/mask -> gateway (interface)</div></p>

The format can be changed by setting the visualizer's <var>labelFormat</var> parameter.

Filtering is also possible. 
The <var>nodeFilter</var> parameter controls which nodes' routing tables should be visualized (by default, all nodes), and the <var>destinationFilter</var> parameter selects the set of destination nodes to consider (again, by default all nodes.)

The visualizer reacts to changes. For example, when a routing protocol changes a routing entry, or an IP address
gets assigned to an interface by DHCP, the visualizer automatically updates the visualizations according to the specified filters. This is very useful e.g. for the simulation of mobile ad-hoc networks.

## Displaying all routing tables

The following example demonstrates how to enable the visualization of routing tables, and how the visualization looks like. The simulation can be run by choosing the <var>DisplayingAll</var> configuration from the ini file.
The network for the simulation contains two <var>StandardHosts</var>, each connected to a <var>Router</var>. 
IP addresses are assigned by the <var>IPv4Configurator</var> module, which also fills in the routing tables automatically. The visualizer module is an <var>IntegratedVisualizer</var> which contains all available visualizers as submodules.

The configuration contains one line, which enables the visualization of routing tables with the <var>displayRoutingTables</var> parameter:

<p><div class="snippet">
*.visualizer.displayRoutingTables = true
</div></p>

All other parameters of the visualizer are left on default.

When the simulation is run, the network looks like this:

<img class="screen" src="displayroutes4.png">

Note that IP addresses are displayed above the nodes. This has nothing to do with the <var>RoutingTableVisualizer</var>, they are displayed because we configured it in <var>InterfaceTableVisualizer</var> to improve clarity.

Here are the routing tables of the two hosts and the router, with the visualized entries highlighted:

<p>
<div class="include">
<pre class="monospace" style="background-color: transparent; border: 0px; margin-bottom: 0px">
Node RoutingTableVisualizationDisplayingAllShowcase.hostA
-- Routing table --
Destination      Netmask          Gateway          Iface           Metric
10.0.0.0         255.255.255.252  *                eth0 (10.0.0.1) 0
<mark>*                *                10.0.0.2         eth0 (10.0.0.1) 0</mark>

Node RoutingTableVisualizationDisplayingAllShowcase.hostB
-- Routing table --
Destination      Netmask          Gateway          Iface           Metric
10.0.0.4         255.255.255.252  *                eth0 (10.0.0.5) 0
<mark>*                *                10.0.0.6         eth0 (10.0.0.5) 0</mark>

Node RoutingTableVisualizationDisplayingAllShowcase.router
-- Routing table --
Destination      Netmask          Gateway          Iface           Metric
<mark>10.0.0.0         255.255.255.252  *                eth0 (10.0.0.2) 0</mark>
<mark>10.0.0.4         255.255.255.252  *                eth1 (10.0.0.6) 0</mark>
</pre>
</div>
</p>

The destination, netmask, gateway, and the interface from the highlighted entries are indicated on the arrows.

Note that in the OMNeT++ Qtenv GUI you can click on an arrow, and the corresponding routing table entry will be shown in the inspector window.

## Filtering routing table entries

By default, the best matching routing table entries from all routing tables towards all destinations are visualized.
This can leave the network cluttered with arrows. It is possible to narrow the selection of visualized routing tables with filter parameters. The goal of this section is to demonstrate the use of the <var>nodeFilter</var> and <var>destinationFilter</var> parameters.

 The section contains two example simulations, which use a more complex network compared to the simulation
in the previous section.
The simulations demonstrate the visualization when it is unfiltered and when it is filtered.
The network looks like the following:

<img class="screen" src="filtersnetwork.png">

It consists of a router connected to a switch. Two <var>StandardHosts</var> are connected to the switch, and two additional <var>StandardHosts</var> are connected to the router.

**Unfiltered routing table visualization**

The example simulation can be run by choosing the <var>Unfiltered</var> configuration from the ini file.
The defaults of the <var>nodeFilter</var> and <var>destinationFilter</var> parameters are <var>"*"</var>, which means the best matching routing entries towards all destinations from all routing tables are visualized. With the default settings, the network looks like the following:

<img class="screen" src="fullmesh.png">

You might have noticed that the arrows don't go through the switch. That is because L2 devices, such as switches and access points, don't have IP addresses or routing tables. They are
effectively transparent for the route visualization algorithm. The visualizer could, in theory, know that the packets will take a path that goes through
the switch. However, in the general case, there may be multiple interconnected switches and multiple paths that the packets can take, making the visualization a complicated issue.

**Filtered routing table visualization**

The example simulation can be run by choosing the <var>Filtered</var> configuration from the ini file.
This example simulation only visualizes the routes going from <var>host2</var> to <var>host3</var>.
First, the <var>destinationFilter</var> parameter is set to <var>host3</var>.
To narrow down the visualized routes to the ones that lead from <var>host2</var>, the <var>nodeFilter</var> parameter
is specified as <var>"host2 or host3 or router"</var>. (One could also write <var>"not(host1 or host4)"</var> for the same effect.)
Note that <var>router</var> needs to be included because the route from <var>host2</var> to <var>host3</var> leads through it.

The visualized routing entries look like the following:

<img class="screen" src="routes.png">

The visualizer's parameters can be changed in the runtime environment, and the changes take effect immediately. Just select
the <var>RoutingTableVisualizer</var> module, and the parameters are listed in the inspector panel:

<img class="screen" src="parameters.png">

## Visualizing changing routing tables

The examples so far have had static routes, but in many scenarios, routing tables change dynamically.
In the following example simulation, the routing tables are changed by AODV (Advanced On-Demand Vector Routing Protocol). The simulation can be run by choosing the <var>Dynamic</var> configuration from the ini file.

The network contains a series of <var>AODVRouters</var>. These are mobile hosts that have AODV and
IP forwarding enabled. Six of the hosts are laid out in a chain, and are stationary.
Their communication ranges are specified so that each host can only reach the adjacent hosts.
<var>destinationHost</var> moves up and down along the chain, and is only in the communication range
of one or two nearby hosts.

We want the AODV protocol to configure the routing tables, so the network configurator is instructed not to add static routes.
<var>sourceHost</var> is configured to ping <var>destinationHost</var>. Since each host is capable of reaching the adjacent hosts only, the ping
packets are relayed to <var>destinationHost</var> through the chain. As the network topology changes because of node mobility, the AODV protocol dynamically configures the routing tables. To reduce clutter, we set the <var>destinationFilter</var> parameter of the visualizer to <var>"destinationHost"</var>.

The following animation depicts what happens when the simulation is run.

<p><video autoplay loop controls src="routingtablevisualizer2.mp4" onclick="this.paused ? this.play() : this.pause();" width="854" height="740"></video></p>

When <var>destinationHost</var> starts to move downwards, packets get routed along the chain to the host that is currently adjacent to <var>destinationHost</var>. Finally, this host relays the packets to <var>destinationHost</var>. As the node moves, routing tables are kept up to date by AODV to relay the packets along the chain to <var>destinationHost</var>. On the way back, the lower hosts are not taking part of the packet relay, and the unused entries remain in their routing tables for a while, then they time out and are removed. When <var>destinationHost</var> gets to the top of the
playground, the process starts over again. The visualizer continually reacts to changes in the routing tables, and updates the visualization accordingly.

## More information

This example only demonstrated the key features of routing table visualization. For more information, refer to the 
<var>RoutingTableVisualizer</var> NED documentation.