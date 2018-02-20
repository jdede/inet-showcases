package inet.showcases.wireless.ieee802154;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee802154.bitlevel.Ieee802154UwbIrRadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;
import inet.visualizer.integrated.IntegratedVisualizer;


module Ieee802154Node extends WirelessHost
{
    parameters:
        wlan[0].typename = "WirelessInterface";
        wlan[0].radioType = "Ieee802154NarrowbandScalarRadio";
        wlan[0].macType = "Ieee802154Mac";
        forwarding = true;
}

module Ieee802154Host extends WirelessHost
{
    // should use this eventually
    // doesnt work now, because it uses Ieee802154NarrowbandMac
    // which is the extension of Ieee802154Mac
    // but it has useMACAcks = true which cannot be overriden (?)
    // and the whole thing doesn't work with ACKs
    parameters:
        wlan[0].typename = "Ieee802154NarrowbandInterface";
        forwarding = true;
}

network Ieee802154ShowcaseLamps
{
    @display("bgb=20,20;bgi=background/floorplan_2_50,s");
    submodules:
        sensor1: Ieee802154Node {
            @display("p=9.5,3.5;i=misc/sensor");
        }
        sensor3: Ieee802154Node {
            @display("p=10.75,10.75;i=misc/sensor");
        }
        sensor2: Ieee802154Node {
            @display("p=9.5,16.5;i=misc/sensor");
        }
        lamp1: Ieee802154Node {
            @display("p=8,5;i=status/bulb");
        }
        lamp2: Ieee802154Node {
            @display("p=8.75,13.5;i=status/bulb");
        }
        lamp3: Ieee802154Node {
            @display("p=13.5,8.5;i=status/bulb");
        }
        lamp4: Ieee802154Node {
            @display("p=13.5,14;i=status/bulb");
        }
        controller: Ieee802154Node {
            @display("p=6.5,10.5;i=misc/sensorgateway");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=18,0.75");
        }
        radioMedium: ApskScalarRadioMedium {		// why ?
            @display("p=18,2.25");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=18,3.75");
        }
}

network Ieee802154ShowcaseMoreLamps
{
    // TODO remove: insert this for positioning grid: ;bgg=5,5
    @display("bgb=20,20;bgi=background/floorplan_2_50,s");
    submodules:
        sensor1: Ieee802154Node {
            @display("p=9.5,3.5;i=misc/sensor");
        }
        sensor2: Ieee802154Node {
            @display("p=9.5,16.5;i=misc/sensor");
        }
        sensor3: Ieee802154Node {
            @display("p=10.75,10.75;i=misc/sensor");
        }
        sensor4: Ieee802154Node {
            @display("p=2.5,17.5;i=misc/sensor");
        }
        sensor5: Ieee802154Node {
            @display("p=2.5,7;i=misc/sensor");
        }
        lamp1: Ieee802154Node {
            @display("p=8,5;i=status/bulb");
        }
        lamp2: Ieee802154Node {
            @display("p=8.75,13.5;i=status/bulb");
        }
        lamp3: Ieee802154Node {
            @display("p=13.5,8.5;i=status/bulb");
        }
        lamp4: Ieee802154Node {
            @display("p=16.5,9.5;i=status/bulb");
        }
        lamp5: Ieee802154Node {
            @display("p=13.5,14;i=status/bulb");
        }
        lamp6: Ieee802154Node {
            @display("p=4,13;i=status/bulb");
        }
        lamp7: Ieee802154Node {
            @display("p=4,10.5;i=status/bulb");
        }
        lamp8: Ieee802154Node {
            @display("p=4,5;i=status/bulb");
        }
        controller: Ieee802154Node {
            @display("p=6.5,10.5;i=misc/sensorgateway");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=18,0.75");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=18,2.25");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=18,3.75");
        }
}

network Ieee802154ShowcaseUwbIr
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
            @display("p=23.89926,17.557278;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}
