---
layout: page
title: Visualizing Network Nodes
hidden: true
---

## Goals

In network simulations, it is essential to visualize the participants of
communication. Customizing nodes' appearance may also be important, for
example to highlight nodes or to distinguish nodes based on location or function.
In complex networks with many nodes, it also can be useful to visualize only the
nodes we are interested in.

This showcase demonstrates how network nodes are visualized in INET
simulations.

INET version: `3.6`<br>
Source files location: <a href="https://github.com/inet-framework/inet-showcases/tree/master/visualizer/networknode" target="_blank">`inet/showcases/visualizer/networknode`</a>

## About the Visualizer

In INET simulations, `NetworkNodeVisualizer` module (included in the
network as part of `IntegratedVisualizer`) is responsible for visualizing
network nodes. `NetworkNodeVisualizer` can be separated to two components: 
`NetworkNodeCanvasVisualizer` and `NetworkNodeOsgVisualizer`.

By default, all nodes are visualized on a 2D canvas by `NetworkNodeCanvasVisualizer` 
and on a 3D osg scene by `NetworkNodeOsgVisualizer`. We can narrow the list of nodes 
to be displayed by using the `nodeFilter` parameter. By using these modules
module, we also are able to customize the look of nodes and to specify the position
of annotations.

By default, the node's name is displayed, but it can be hide by setting the
`displayModuleName` parameter to `false`.

### 2D Visualization

`NetworkNodeCanvasVisualizer` is responsible for displaying nodes on a 2D canvas. 
On the 2D canvas, each node is displayed as a 2D icon. The icon of the node can be customized 
in the `NED` network description file by setting the display string of the node. 
The display string can be specified by tags. We can customize properties of the icon 
by setting the `i` tag. It has three arguments:
- The first argument specifies the icon to be used. This argument is used to find 
the image. The `misc/car2` name resolves to the `inet/images/misc/car2.png` file 
and `misc/person3` name resolves to the `inet/images/misc/person3.png` file.
- The second argument specifies the color of the icon, and it accepts English color names 
(more precisely, SVG color names) and HTML-style RGB values.
- The third argument defines the colorization amount of the icon. It is as a number 
between zero and one. Number one means full colorization.

We can set the size of the icon by using the `is` tag. The size can be 
`vs` (very small), `s` (small), `n` (normal), `l` (large) and `vl` (very large).

(**NOTE:** All supported display string tags are listed in the 
<a href="https://omnetpp.org/doc/omnetpp/manual/#cha:display-strings" target="_blank">OMNeT++ Simulation Manual</a>.)

### 3D Visualization

Nodes are displayed on a 3D osg scene, by default. For 3D visualization, 
`OMNeT++` basically exposes the `OpenSceneGraph` API. One needs to assemble 
an osg scene graph in the model, and give it to `OMNeT++` for display. 
The scene graph can be updated at runtime, and changes will be reflected in the display.

**NOTE:** A scene graph is a tree-like directed graph data structure that 
describes a 3D scene. The root node represents the whole virtual world.
The world is then broken down into a hierarchy of nodes representing either 
spatial groupings of objects, settings of the position of objects, animations of objects, 
or definitions of logical relationships between objects. The leaves of the graph represent 
the physical objects themselves, the drawable geometry and their material properties. 

By default, each node is displayed as a 2D icon on the osg scene which is set 
in the display string of the node. 3D visualizations often need to load external 
resources from disk, for example images or 3D models. By default, OSG tries to load 
these files from the current working directory (unless they are given with absolute path).
The resource we want to load is specified in the `node.osgModel` parameter.

**NOTE:** Here are some supported file formats: geometric file formats: 
3dc, 3ds, flt, geo, iv, ive, lwo, md2, obj, osg. Image file formats: bmp, gif, 
jpeg, rgb, tga, tif.
<!-- WIP -->
Color, size and other appearance settings can be changed with
`osgModel` and `osgModelColor` parameters of the node. Here
are some examples. We use the `example.osg` external model as the 3D model 
for the `example` node:

-   `*.example.osgModel = "example.osg.10,10,10.trans"`<br>
    This line of code translates the example.osg by some XYZ offset.
-   `*.example.osgModel = "example.osg.90,10,30.rot"`<br>
    This line of code rotates the example.osg about the XYZ axes.
-   `*.example.osgModel = "example.osg.5.scale"`<br>
    This line of code scales the example.osg.

These parameters can be combined by writing them after each other. Consider the following example:<br>
`*.example.osgModel = "example.osg.10,10,10.trans.90,10,30.rot"`.<br>
The above code combines translation and rotation.

**NOTE** More information can be found on the <a href="http://www.openscenegraph.org" target="_blank">OpenSceneGraph web site</a> 
and in dedicated OpenSceneGraph books.

## Customizing Appearance of Network Nodes

This example shows how the nodes' look can be customized. For this example, a
simulation is created. It can be run by selecting the `VisualizingNodes`
configuration from the ini file.

The network contains two `AdhocHosts`, `pedestrian` and
`car`. We change the default icon of `pedestrian` by
modifying its display string in the
`NetworkNodeVisualizerShowcase.ned` file. (Note that the default icon also
can be modified in the node's *Properties* on the *Appearance* tab.)

``` {.snippet}
pedestrian: AdhocHost {
    @display("p=113,156;i=device/cellphone2");
}
```

On the 2D canvas, two cellphone icons can be seen, representing `car`
and `pedestrian`.

<img src="VisualizingNodes_v1019.png" class="screen" />

On the 3D osg scene, you can see the same cellphone icons as on the 2D canvas.
The cellphone icons are automatically rotating towards the camera.

<img src="WithoutCustomize3D_transparent_bg.png" class="screen" width="900" onclick="imageFullSizeZoom(this);" style="cursor:zoom-in" />

In our next experiment, we replace the nodes' icon with external 3D models by
using the following configuration.

``` {.snippet}
*.pedestrian.osgModel = "boxman.osgb.(0.3).scale.0,0,45.rot"

*.car.osgModel = "car.osgb.200.scale.0,0,45.rot"
*.car.osgModelColor = "red"
```

This configuration affects only 3D visualization. The following animation shows
how the nodes look like after we have replaced their icon.

<p><video autoplay loop controls onclick="this.paused ? this.play() : this.pause();" width="774" height="490" src="CustomizedRotateCam_v2.mp4"></video></p>

The `pedestrian` node is represented by an animated walking
boxman and `car` is represented by a car model instead of 2D
cellphone icons. The 3D models make the nodes recognizable even without
displaying the module's name.

## More Information

This example only demonstrated the key features of network node visualization.
For more information, refer to the `NetworkNodeVisualizer` NED
documentation.

<!--
## Discussion

Use <a href="https://github.com/inet-framework/inet-showcases/issues/"
target="_blank">this page</a> in the GitHub issue tracker for commenting on
this showcase.
-->
