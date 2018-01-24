package inet.showcases.wireless.sensornetwork;

import inet.common.lifecycle.LifecycleController;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
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

network testingIcons extends SensorNetworkShowcaseA
{
    @display("bgb=124.81333,39.893333");
    submodules:
        wirelessHost: WirelessHost {
            @display("p=57.493332,14.813333;i=misc/aircraft");
        }
        wirelessHost1: WirelessHost {
            @display("p=71.28,7.48;i=misc/battery");
        }
        wirelessHost2: WirelessHost {
            @display("p=84.04,9.533333;i=misc/car2");
        }
        wirelessHost3: WirelessHost {
            @display("p=69.96,22.88;i=misc/highvoltage");
        }
        wirelessHost4: WirelessHost {
            @display("p=90.78667,17.746666;i=misc/helicopter");
        }
        wirelessHost5: WirelessHost {
            @display("p=99.439995,7.1866665;i=misc/chargingstation");
        }
        wirelessHost6: WirelessHost {
            @display("p=109.56,18.48;i=misc/satellite2");
        }
        wirelessHost7: WirelessHost {
            @display("p=105.6,29.626665;i=misc/drone");
        }
        wirelessHost8: WirelessHost {
            @display("p=89.46667,30.653332;i=misc/smartphone");
        }
        wirelessHost9: WirelessHost {
            @display("p=50.16,30.359999;i=misc/thermometer");
        }
}

network testingIcons2
{
    @display("bgb=940,400");
    submodules:
        wirelessHost: WirelessHost {
            @display("p=197,111;i=misc/aircraft");
        }
        standardHost: StandardHost {
            @display("p=243,200;i=misc/sensor");
        }
        wirelessHost1: WirelessHost {
            @display("p=427,154;i=misc/satellite2");
        }
        wirelessHost2: WirelessHost {
            @display("p=311,82;i=misc/battery");
        }
        wirelessHost3: WirelessHost {
            @display("p=466,258;i=misc/helicopter");
        }
        wirelessHost4: WirelessHost {
            @display("p=583,152;i=misc/car2");
        }
        wirelessHost5: WirelessHost {
            @display("p=744,115;i=misc/drone");
        }
        wirelessHost6: WirelessHost {
            @display("p=495,76;i=misc/chargingstation");
        }
        wirelessHost7: WirelessHost {
            @display("p=694,241;i=misc/highvoltage");
        }
        wirelessHost8: WirelessHost {
            @display("p=536,315;i=misc/thermometer");
        }
        wirelessHost9: WirelessHost {
            @display("p=294,298;i=misc/smartphone");
        }
        wirelessHost10: WirelessHost {
            @display("p=115,274;i=misc/securitycamera");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=42,57");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=51,137");
        }
        standardHost1: StandardHost {
            @display("p=364,251;i=misc/smartphone");
        }
        standardHost2: StandardHost {
            @display("p=591,246;i=misc/drone");
        }
}
