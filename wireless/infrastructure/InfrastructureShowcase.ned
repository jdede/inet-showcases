package inet.showcases.wireless.infrastructure;

import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network InfrastructureShowcase
{
    @display("bgb=1199.5619,696.449");
    submodules:
        configurator: IPv4NetworkConfigurator {
            @display("p=52,45");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=51,112");
        }
        visualizer: IntegratedVisualizer {
            @display("p=52,164");
        }
        host1: WirelessHost {
            @display("p=347.12598,311.97397");
        }
        host2: WirelessHost {
            @display("p=547.053,224.094");
        }
        host3: WirelessHost {
            @display("p=714.02496,355.91397");
        }
        host4: WirelessHost {
            @display("p=935.92194,303.18597");
        }
        accessPoint: AccessPoint {
            @display("p=547.053,432.809");
        }
}

network InfrastructureShowcaseB
{
    @display("bgb=1199.5619,696.449");
    submodules:
        configurator: IPv4NetworkConfigurator {
            @display("p=52,45");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=51,112");
        }
        visualizer: IntegratedVisualizer {
            @display("p=52,164");
        }
        host1: WirelessHost {
            @display("p=347.12598,311.97397");
        }
        host2: WirelessHost {
            @display("p=547.053,224.094");
        }
        host3: WirelessHost {
            @display("p=714.02496,355.91397");
        }
        host4: WirelessHost {
            @display("p=935.92194,303.18597");
        }
}
