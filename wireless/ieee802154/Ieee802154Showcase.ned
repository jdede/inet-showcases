package inet.showcases.wireless.ieee802154;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


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
        tower: WirelessHost {
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
        host0: WirelessHost {
            @display("p=100.0,250.0");
        }
        host1: WirelessHost {
            @display("p=150.0,336.6");
        }
        host2: WirelessHost {
            @display("p=250.0,336.6");
        }
        host3: WirelessHost {
            @display("p=300.0,250.0");
        }
        host4: WirelessHost {
            @display("p=250.0,163.4");
        }
        host5: WirelessHost {
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
        tower: WirelessHost {
            @display("p=603.9006,326.8363;i=misc/sun");
        }
        host0: WirelessHost {
            @display("p=504.35654,326.8363;i=misc/solarpanel");
        }
        host1: WirelessHost {
            @display("p=554.12854,413.10782;i=misc/solarpanel");
        }
        host2: WirelessHost {
            @display("p=653.6726,413.10782;i=misc/solarpanel");
        }
        host3: WirelessHost {
            @display("p=705.1037,326.8363;i=misc/solarpanel");
        }
        host4: WirelessHost {
            @display("p=653.6726,240.56479;i=misc/solarpanel");
        }
        host5: WirelessHost {
            @display("p=554.12854,240.56479;i=misc/solarpanel");
        }
        host6: WirelessHost {
            @display("p=404.81247,326.8363;i=misc/solarpanel");
        }
        host7: WirelessHost {
            @display("p=431.35757,428.03943;i=misc/solarpanel");
        }
        host8: WirelessHost {
            @display("p=504.35654,501.0384;i=misc/solarpanel");
        }
        host9: WirelessHost {
            @display("p=603.9006,527.5835;i=misc/solarpanel");
        }
        host10: WirelessHost {
            @display("p=705.1037,501.0384;i=misc/solarpanel");
        }
        host11: WirelessHost {
            @display("p=778.10266,428.03943;i=misc/solarpanel");
        }
        host12: WirelessHost {
            @display("p=804.64777,326.8363;i=misc/solarpanel");
        }
        host13: WirelessHost {
            @display("p=778.10266,227.29225;i=misc/solarpanel");
        }
        host14: WirelessHost {
            @display("p=705.1037,154.29327;i=misc/solarpanel");
        }
        host15: WirelessHost {
            @display("p=603.9006,127.7482;i=misc/solarpanel");
        }
        host16: WirelessHost {
            @display("p=504.35654,154.29327;i=misc/solarpanel");
        }
        host17: WirelessHost {
            @display("p=431.35757,227.29225;i=misc/solarpanel");
        }
}



