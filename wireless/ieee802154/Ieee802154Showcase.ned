package inet.showcases.wireless.ieee802154;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


module Ieee802154Node extends WirelessHost
{
    parameters:
        wlan[0].typename = "WirelessInterface";
        wlan[0].radioType = "Ieee802154NarrowbandScalarRadio";
        wlan[0].macType = "Ieee802154Mac";
        forwarding = true;
}

network Ieee802154ShowcaseA
{
    parameters:
        @display("bgb=400,400");
        int numHosts;
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=67,38");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=66,95");
        }
        visualizer: IntegratedVisualizer {
            @display("p=67,146");
        }
        powerplant: WirelessHost {
            @display("p=200,200");
        }
        //        host1: WirelessHost;
        //        host2: WirelessHost;
        //        host3: WirelessHost;
        //        host4: WirelessHost;
        //        host5: WirelessHost;
        //        host6: WirelessHost;
        //        host7: WirelessHost;
        //        host8: WirelessHost;
        //        host9: WirelessHost;
        //        host10: WirelessHost;
        //        host11: WirelessHost;
        //        host12: WirelessHost;
        //        host13: WirelessHost;
        //        host14: WirelessHost;
        //        host15: WirelessHost;
        //        host16: WirelessHost;
        //        host17: WirelessHost;
        //        host18: WirelessHost;
        host[numHosts]: WirelessHost;
}

network Ieee802154ShowcaseB
{
    @display("bgb=4000,4000");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=390.97147,275.12808");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=386.14468,685.4068");
        }
        visualizer: IntegratedVisualizer {
            @display("p=390.97147,1177.7412");
        }
        wirelessHost: WirelessHost {
            @display("p=2287.9072,1867.9749");
        }
        wirelessHost1: WirelessHost {
            @display("p=1752.1315,2239.6392");
        }
        wirelessHost2: WirelessHost {
            @display("p=3040.8892,1906.5894");
        }
        wirelessHost3: WirelessHost {
            @display("p=2258.9463,1312.8918");
        }
        wirelessHost4: WirelessHost {
            @display("p=1008.803,1887.2821");
        }
        wirelessHost5: WirelessHost {
            @display("p=1423.9084,1071.5515");
        }
        wirelessHost6: WirelessHost {
            @display("p=2958.8335,1071.5515");
        }
        wirelessHost7: WirelessHost {
            @display("p=3678.028,1906.5894");
        }
        wirelessHost8: WirelessHost {
            @display("p=3040.8892,2876.7778");
        }
        wirelessHost9: WirelessHost {
            @display("p=1361.1599,2852.6438");
        }
}

network Ieee802154ShowcaseC
{
    @display("bgb=4000,4000");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=390.97147,275.12808");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=386.14468,685.4068");
        }
        visualizer: IntegratedVisualizer {
            @display("p=390.97147,1177.7412");
        }
        host0: Ieee802154Node {
            @display("p=100.0,250.0");
        }
        host1: Ieee802154Node {
            @display("p=150.0,336.6");
        }
        host2: Ieee802154Node {
            @display("p=250.0,336.6");
        }
        host3: Ieee802154Node {
            @display("p=300.0,250.0");
        }
        host4: Ieee802154Node {
            @display("p=250.0,163.4");
        }
        host5: Ieee802154Node {
            @display("p=150.0,163.4");
        }
}

network Ieee802154ShowcaseD
{
    @display("bgb=1076.7349,781.42084");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=121.11193,91.24872");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=119.452866,228.95132");
        }
        visualizer: IntegratedVisualizer {
            @display("p=121.11193,389.88086");
        }
        powerplant: Ieee802154Node {
            @display("p=603.9006,326.8363;i=misc/sun");
        }
        mirror0: Ieee802154Node {
            @display("p=504.35654,326.8363;i=misc/solarpanel");
        }
        mirror1: Ieee802154Node {
            @display("p=554.12854,413.10782;i=misc/solarpanel");
        }
        mirror2: Ieee802154Node {
            @display("p=653.6726,413.10782;i=misc/solarpanel");
        }
        mirror3: Ieee802154Node {
            @display("p=705.1037,326.8363;i=misc/solarpanel");
        }
        mirror4: Ieee802154Node {
            @display("p=653.6726,240.56479;i=misc/solarpanel");
        }
        mirror5: Ieee802154Node {
            @display("p=554.12854,240.56479;i=misc/solarpanel");
        }
        mirror6: Ieee802154Node {
            @display("p=404.81247,326.8363;i=misc/solarpanel");
        }
        mirror7: Ieee802154Node {
            @display("p=431.35757,428.03943;i=misc/solarpanel");
        }
        mirror8: Ieee802154Node {
            @display("p=504.35654,501.0384;i=misc/solarpanel");
        }
        mirror9: Ieee802154Node {
            @display("p=603.9006,527.5835;i=misc/solarpanel");
        }
        mirror10: Ieee802154Node {
            @display("p=705.1037,501.0384;i=misc/solarpanel");
        }
        mirror11: Ieee802154Node {
            @display("p=778.10266,428.03943;i=misc/solarpanel");
        }
        mirror12: Ieee802154Node {
            @display("p=804.64777,326.8363;i=misc/solarpanel");
        }
        mirror13: Ieee802154Node {
            @display("p=778.10266,227.29225;i=misc/solarpanel");
        }
        mirror14: Ieee802154Node {
            @display("p=705.1037,154.29327;i=misc/solarpanel");
        }
        mirror15: Ieee802154Node {
            @display("p=603.9006,127.7482;i=misc/solarpanel");
        }
        mirror16: Ieee802154Node {
            @display("p=504.35654,154.29327;i=misc/solarpanel");
        }
        mirror17: Ieee802154Node {
            @display("p=431.35757,227.29225;i=misc/solarpanel");
        }
}

network Ieee802154ShowcaseE
{
    @display("bgb=1571.57,1114.7");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,100");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=100,200");
        }
        visualizer: IntegratedVisualizer {
            @display("p=100,300");
        }
        mirror0: Ieee802154Node {
            @display("p=558.92,472.57;i=misc/solarpanel");
        }
        mirror1: Ieee802154Node {
            @display("p=632.70996,602.88;i=misc/solarpanel");
        }
        mirror2: Ieee802154Node {
            @display("p=783.43,602.88;i=misc/solarpanel");
        }
        mirror3: Ieee802154Node {
            @display("p=858.79,472.57;i=misc/solarpanel");
        }
        mirror4: Ieee802154Node {
            @display("p=783.43,342.26;i=misc/solarpanel");
        }
        mirror5: Ieee802154Node {
            @display("p=632.70996,342.26;i=misc/solarpanel");
        }
        mirror6: Ieee802154Node {
            @display("p=508.68,472.57;i=misc/solarpanel");
        }
        mirror7: Ieee802154Node {
            @display("p=535.37,573.05;i=misc/solarpanel");
        }
        mirror8: Ieee802154Node {
            @display("p=607.58997,645.27;i=misc/solarpanel");
        }
        mirror9: Ieee802154Node {
            @display("p=708.07,671.95996;i=misc/solarpanel");
        }
        mirror10: Ieee802154Node {
            @display("p=808.55,645.27;i=misc/solarpanel");
        }
        mirror11: Ieee802154Node {
            @display("p=880.76996,573.05;i=misc/solarpanel");
        }
        mirror12: Ieee802154Node {
            @display("p=907.45996,472.57;i=misc/solarpanel");
        }
        mirror13: Ieee802154Node {
            @display("p=880.76996,372.09;i=misc/solarpanel");
        }
        mirror14: Ieee802154Node {
            @display("p=808.55,299.87;i=misc/solarpanel");
        }
        mirror15: Ieee802154Node {
            @display("p=708.07,273.18;i=misc/solarpanel");
        }
        mirror16: Ieee802154Node {
            @display("p=607.58997,299.87;i=misc/solarpanel");
        }
        mirror17: Ieee802154Node {
            @display("p=535.37,372.09;i=misc/solarpanel");
        }
        powerplant: Ieee802154Node {
            @display("p=708.07,472.57;i=misc/sun");
        }
}

network Ieee802154ShowcaseF
{
    @display("bgb=1571.57,1114.7");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,100");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=100,200");
        }
        visualizer: IntegratedVisualizer {
            @display("p=100,300");
        }
        mirror0: Ieee802154Node {
            @display("p=574,517;i=misc/solarpanel");
        }
        mirror1: Ieee802154Node {
            @display("p=671,622;i=misc/solarpanel");
        }
        mirror2: Ieee802154Node {
            @display("p=819,573;i=misc/solarpanel");
        }
        mirror3: Ieee802154Node {
            @display("p=847,427;i=misc/solarpanel");
        }
        mirror4: Ieee802154Node {
            @display("p=744,332;i=misc/solarpanel");
        }
        mirror5: Ieee802154Node {
            @display("p=598,380;i=misc/solarpanel");
        }
        mirror6: Ieee802154Node {
            @display("p=508.68,472.57;i=misc/solarpanel");
        }
        mirror7: Ieee802154Node {
            @display("p=535.37,573.05;i=misc/solarpanel");
        }
        mirror8: Ieee802154Node {
            @display("p=607.58997,645.27;i=misc/solarpanel");
        }
        mirror9: Ieee802154Node {
            @display("p=708.07,671.95996;i=misc/solarpanel");
        }
        mirror10: Ieee802154Node {
            @display("p=808.55,645.27;i=misc/solarpanel");
        }
        mirror11: Ieee802154Node {
            @display("p=880.76996,573.05;i=misc/solarpanel");
        }
        mirror12: Ieee802154Node {
            @display("p=907.45996,472.57;i=misc/solarpanel");
        }
        mirror13: Ieee802154Node {
            @display("p=880.76996,372.09;i=misc/solarpanel");
        }
        mirror14: Ieee802154Node {
            @display("p=808.55,299.87;i=misc/solarpanel");
        }
        mirror15: Ieee802154Node {
            @display("p=708.07,273.18;i=misc/solarpanel");
        }
        mirror16: Ieee802154Node {
            @display("p=607.58997,299.87;i=misc/solarpanel");
        }
        mirror17: Ieee802154Node {
            @display("p=535.37,372.09;i=misc/solarpanel");
        }
        powerplant: Ieee802154Node {
            @display("p=708.07,472.57;i=misc/sun");
        }
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
        radioMedium: ApskScalarRadioMedium {
            @display("p=18,2.25");
        }
        visualizer: IntegratedVisualizer {
            @display("p=18,3.75");
        }
}
