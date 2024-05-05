#!/bin/sh

mkdir -p /var/log/webgoat

# Elastic's eBPF
EventsTrace --process-exec >/var/log/webgoat/EventsTrace.log &

# Start Webgoat
su webgoat -c '"/opt/java/openjdk/bin/java" "-Duser.home=/home/webgoat" "-Dfile.encoding=UTF-8" "--add-opens" "java.base/java.lang=ALL-UNNAMED" "--add-opens" "java.base/java.util=ALL-UNNAMED" "--add-opens" "java.base/java.lang.reflect=ALL-UNNAMED" "--add-opens" "java.base/java.text=ALL-UNNAMED" "--add-opens" "java.desktop/java.beans=ALL-UNNAMED" "--add-opens" "java.desktop/java.awt.font=ALL-UNNAMED" "--add-opens" "java.base/sun.nio.ch=ALL-UNNAMED" "--add-opens" "java.base/java.io=ALL-UNNAMED" "--add-opens" "java.base/java.util=ALL-UNNAMED" "--add-opens" "java.base/sun.nio.ch=ALL-UNNAMED" "--add-opens" "java.base/java.io=ALL-UNNAMED" "-Drunning.in.docker=true" "-jar" "webgoat.jar" "--server.address" "0.0.0.0"'
