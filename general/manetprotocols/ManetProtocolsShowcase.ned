package inet.showcases.general.manetprotocols;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.gpsr.GpsrRouter;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network ManetProtocolsShowcase
{
    @display("bgb=968,400;bgl=2");
    submodules:
        source: GpsrRouter {
            @display("p=85,84;i=misc/solarpanel");
        }
        destination: GpsrRouter {
            @display("p=799,183;i=misc/sensorgateway");
        }
        node6: GpsrRouter {
            @display("p=603,212;i=misc/solarpanel");
        }
        node5: GpsrRouter {
            @display("p=506,128;i=misc/solarpanel");
        }
        node4: GpsrRouter {
            @display("p=420,277;i=misc/solarpanel");
        }
        node1: GpsrRouter {
            @display("p=100,172;i=misc/solarpanel");
        }
        node3: GpsrRouter {
            @display("p=271,172;i=misc/solarpanel");
        }
        node2: GpsrRouter {
            @display("p=248,64;i=misc/solarpanel");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=92,312");
        }
        visualizer: IntegratedVisualizer {
            @display("p=204,312");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=291.6,312.255");
        }
}
