#!/bin/bash

# Creates a device where AudioRelay can stream audio into
pactl load-module module-null-sink sink_name=audiorelay-virtual-mic-sink sink_properties=device.description=Virtual-Mic-Sink
# Creates a device usable by other apps
pactl load-module module-remap-source master=audiorelay-virtual-mic-sink.monitor source_name=audiorelay-virtual-mic-sink source_properties=device.description=Virtual-Mic
