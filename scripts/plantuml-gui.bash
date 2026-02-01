#!/bin/bash
set -e

# Setup Java environment
export JAVA_HOME="$SNAP/usr/lib/jvm/java-25-openjdk-${SNAP_ARCH}"
export PATH="$JAVA_HOME/bin:$PATH"

export GRAPHVIZ_DOT="$SNAP/usr/bin/dot"

# GUI-specific Java options for better font rendering
export _JAVA_OPTIONS="-Duser.home=$SNAP_USER_DATA -Djava.util.prefs.userRoot=$SNAP_USER_DATA/.java/.userPrefs -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"

exec java -jar "$SNAP/jar/plantuml.jar" --gui "$@"
