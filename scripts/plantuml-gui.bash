#!/bin/bash
set -e

# Set up Java environment at runtime
export JAVA_HOME=$SNAP/usr/lib/jvm/java-25-openjdk-${SNAP_ARCH}
export PATH=$JAVA_HOME/bin:$SNAP/usr/bin:$PATH

# Tell PlantUML where to find Graphviz dot
export GRAPHVIZ_DOT=$SNAP/usr/bin/dot

# GUI-specific Java options for better font rendering
export _JAVA_OPTIONS="-Duser.home=$SNAP_USER_DATA -Djava.util.prefs.systemRoot=$SNAP_USER_DATA/.java -Djava.util.prefs.userRoot=$SNAP_USER_DATA/.java/.userPrefs -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"

# Launch GUI mode
exec java -jar $SNAP/jar/plantuml.jar --gui "$@"
