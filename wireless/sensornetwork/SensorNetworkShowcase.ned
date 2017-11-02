package inet.showcases.wireless.sensornetwork;

import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.APSKScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network SensorNetworkShowcase
{
    @display("bgb=40,40");
    submodules:
        configurator: IPv4NetworkConfigurator {
            @display("p=4.0722203,4.0722203");
        }
        visualizer: IntegratedVisualizer {
            @display("p=4.0722203,9.346079");
        }
        radioMedium: APSKScalarRadioMedium {
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
