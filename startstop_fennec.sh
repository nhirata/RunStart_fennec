#!/bin/sh
package="org.mozilla.fennec"
    
adb shell am start -a android.intent.action.VIEW -n $package/.App -d file://mnt/sdcard/startup/m.twitter.com/twitter.com/toptweets/favorites3.html#0

sleep 10

adb shell ps | grep $package | awk '{print $2}' | xargs adb shell kill
