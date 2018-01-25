package inet.showcases.wireless.sensornetwork;

import inet.common.lifecycle.LifecycleController;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee802154.bitlevel.Ieee802154UwbIrRadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network SensorNetworkShowcaseA
{
    @display("bgb=40,40");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=4.0722203,4.0722203");
        }
        visualizer: IntegratedVisualizer {
            @display("p=4.0722203,9.346079");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=4.0054626,14.219392");
        }
        sensor4: WirelessHost {
            @display("p=17.290247,6.6757708;i=misc/sensor2");
        }
        sensor1: WirelessHost {
            @display("p=11.482326,21.696255;i=misc/sensor2");
        }
        sensor2: WirelessHost {
            @display("p=28.772572,30.775303;i=misc/sensor2");
        }
        sensor3: WirelessHost {
            @display("p=32.978306,6.6757708;i=misc/sensor2");
        }
        gateway: WirelessHost {
            @display("p=23.89926,17.557278;i=misc/sensor2");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

module Ieee802154SensorNode extends WirelessHost
{
    parameters:
        wlan[0].typename = "WirelessInterface";
        wlan[0].radioType = "Ieee802154NarrowbandScalarRadio";
}

network SensorNetworkShowcaseB
{
    @display("bgb=40,40");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=4.0722203,4.0722203");
        }
        visualizer: IntegratedVisualizer {
            @display("p=4.0722203,9.346079");
        }
        radioMedium: ApskScalarRadioMedium {
            @display("p=4.0054626,14.219392");
        }
        sensor4: WirelessHost {
            @display("p=17.290247,6.6757708;i=misc/sensor2");
        }
        sensor1: WirelessHost {
            @display("p=11.482326,21.696255;i=misc/sensor2");
        }
        sensor2: WirelessHost {
            @display("p=28.772572,30.775303;i=misc/sensor2");
        }
        sensor3: WirelessHost {
            @display("p=32.978306,6.6757708;i=misc/sensor2");
        }
        gateway: WirelessHost {
            @display("p=23.89926,17.557278;i=misc/sensor2");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

network SensorNetworkShowcaseC extends SensorNetworkShowcaseB
{
    submodules:
        lifecycleController: LifecycleController {
            @display("p=4.1066666,20.826666");
        }
}

network SensorNetworkShowcaseD
{
    @display("bgb=40,40");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=4.0722203,4.0722203");
        }
        visualizer: IntegratedVisualizer {
            @display("p=4.0722203,9.346079");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=4.0054626,14.219392");
        }
        sensor4: Ieee802154SensorNode {
            @display("p=17.290247,6.6757708;i=misc/sensor2");
        }
        sensor1: Ieee802154SensorNode {
            @display("p=11.482326,21.696255;i=misc/sensor2");
        }
        sensor2: Ieee802154SensorNode {
            @display("p=28.772572,30.775303;i=misc/sensor2");
        }
        sensor3: Ieee802154SensorNode {
            @display("p=32.978306,6.6757708;i=misc/sensor2");
        }
        gateway: Ieee802154SensorNode {
            @display("p=23.89926,17.557278;i=misc/sensor2");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

network SensorNetworkShowcaseE extends SensorNetworkShowcaseD
{
    submodules:
        lifecycleController: LifecycleController {
            @display("p=4.4,20.973333");
        }
}

network SensorNetworkShowcaseF
{
    @display("bgb=40,40");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=4.0722203,4.0722203");
        }
        visualizer: IntegratedVisualizer {
            @display("p=4.0722203,9.346079");
        }
        radioMedium: Ieee802154UwbIrRadioMedium {
            @display("p=4.0054626,14.219392");
        }
        sensor4: WirelessHost {
            @display("p=17.290247,6.6757708;i=misc/sensor2");
        }
        sensor1: WirelessHost {
            @display("p=11.482326,21.696255;i=misc/sensor2");
        }
        sensor2: WirelessHost {
            @display("p=28.772572,30.775303;i=misc/sensor2");
        }
        sensor3: WirelessHost {
            @display("p=32.978306,6.6757708;i=misc/sensor2");
        }
        gateway: WirelessHost {
            @display("p=23.89926,17.557278;i=misc/sensor2");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}
