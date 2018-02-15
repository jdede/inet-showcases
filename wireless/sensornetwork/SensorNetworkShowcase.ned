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
            @display("p=23.89926,17.557278;i=misc/sensorgateway");
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
            @display("p=23.89926,17.557278;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

network SensorNetworkShowcaseB_2
{
    // ;bgg=5,5
    @display("bgb=60,30;bgi=background/warehouse5_50_7,s");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=3.4662657,4.033473");
        }
        visualizer: IntegratedVisualizer {
            @display("p=3.4662657,9.264383");
        }
        radioMedium: ApskScalarRadioMedium {
            @display("p=3.4032426,14.0541315");
        }
        sensor4: WirelessHost {
            @display("p=22,6.5;i=misc/sensor2");
        }
        sensor1: WirelessHost {
            @display("p=16.482326,20.196255;i=misc/sensor2");
        }
        sensor2: WirelessHost {
            @display("p=33.772572,16.275303;i=misc/sensor2");
        }
        sensor3: WirelessHost {
            @display("p=35,6.5;i=misc/sensor2");
        }
        gateway: WirelessHost {
            @display("p=28.5,13;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=38.35591,12.96182");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

network SensorNetworkShowcaseB_3 extends SensorNetworkShowcaseB
{
    submodules:
        lifecycleController: LifecycleController {
            @display("p=3.8133333,21.119999");
        }
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
            @display("p=5,3");
        }
        visualizer: IntegratedVisualizer {
            @display("p=5,7");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=5,11");
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
            @display("p=23.89926,17.557278;i=misc/sensorgateway");
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
            @display("p=5,15");
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
            @display("p=23.89926,17.557278;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=35.381584,17.557278");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}

network SensorNetworkG
{
    // this should be simpler
    @display("bgb=400,400;bgi=background/floorplan4_75,s;bgg=50,5");
    submodules:
        sensor1: WirelessHost {
            @display("p=190,220;i=misc/sensor");
        }
        sensor2: WirelessHost {
            @display("p=70,230;i=misc/sensor");
        }
        sensor3: WirelessHost {
            @display("p=340,140;i=misc/sensor");
        }
        sensor4: WirelessHost {
            @display("p=120,210;i=misc/sensor");
        }
        sensor5: WirelessHost {
            @display("p=80,120;i=misc/sensor");
        }
        sensor6: WirelessHost {
            @display("p=210,100;i=misc/sensor");
        }
        sensor7: WirelessHost {
            @display("p=260,40;i=misc/sensor");
        }
        sensor8: WirelessHost {
            @display("p=190,40;i=misc/sensor");
        }
        lamp1: WirelessHost {
            @display("p=90,80;i=status/bulb");
        }
        lamp2: WirelessHost {
            @display("p=180,80;i=status/bulb");
        }
        lamp3: WirelessHost {
            @display("p=230,80;i=status/bulb");
        }
        lamp4: WirelessHost {
            @display("p=310,80;i=status/bulb");
        }
}

network SensorNetworkShowcaseH
{
    @display("bgb=20,20;bgi=background/floorplan_2_50,s");
    submodules:
        sensor1: WirelessHost {
            @display("p=9.5,3.5;i=misc/sensor");
        }
        sensor3: WirelessHost {
            @display("p=10.75,10.75;i=misc/sensor");
        }
        sensor2: WirelessHost {
            @display("p=9.5,16.5;i=misc/sensor");
        }
        lamp1: WirelessHost {
            @display("p=8,5;i=status/bulb");
        }
        lamp2: WirelessHost {
            @display("p=8.75,13.5;i=status/bulb");
        }
        lamp3: WirelessHost {
            @display("p=13.5,8.5;i=status/bulb");
        }
        lamp4: WirelessHost {
            @display("p=13.5,14;i=status/bulb");
        }
        controller: WirelessHost {
            @display("p=6.5,10.5;i=misc/sensorgateway");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=18,0.75");
        }
        radioMedium: ApskScalarRadioMedium {
            @display("p=18,2.25");
        }
        visualizer: IntegratedVisualizer {
            @display("p=18,3.75");
        }
}
