package inet.showcases.wireless.ieee802154;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network Ieee802154ShowcaseA
{
    parameters:
    	@display("bgb=400,400");
//    	int numHosts;
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
//            @display("p=200,200");
        }
        host1: WirelessHost;
        host2: WirelessHost;
        host3: WirelessHost;
        host4: WirelessHost;
        host5: WirelessHost;
        host6: WirelessHost;
        host7: WirelessHost;
        host8: WirelessHost;
        host9: WirelessHost;
        host10: WirelessHost;
        host11: WirelessHost;
        host12: WirelessHost;
        host13: WirelessHost;
        host14: WirelessHost;
        host15: WirelessHost;
        host16: WirelessHost;
        host17: WirelessHost;
        host18: WirelessHost;
}
