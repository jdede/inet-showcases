package inet.showcases.wireless.pcaprecording;

import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network PcapRecordingShowcase
{
    @display("bgb=400,400");
    submodules:
        configurator: IPv4NetworkConfigurator {
            @display("p=87,57");
        }
        visualizer: IntegratedVisualizer {
            @display("p=87,130");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=86,192");
        }
        host1: AdhocHost {
            @display("p=202,196");
        }
        host2: AdhocHost {
            @display("p=271,115");
        }
}
