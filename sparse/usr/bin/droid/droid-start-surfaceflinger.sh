#!/bin/sh

# if the QT_QPA_PLATFORM has been set to surfaceflinger, we need to start it.

if [ "$QT_QPA_PLATFORM" == "surfaceflinger" ]; then
    /system/bin/start surfaceflinger_hybris
fi

