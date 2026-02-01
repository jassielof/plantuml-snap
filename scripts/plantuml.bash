#!/bin/bash
set -e

# Set user home to writable location for Java preferences and config
# export _JAVA_OPTIONS="-Duser.home=$SNAP_USER_DATA -Djava.util.prefs.systemRoot=$SNAP_USER_DATA/.java -Djava.util.prefs.userRoot=$SNAP_USER_DATA/.java/.userPrefs"

# Execute PlantUML with all arguments passed through
exec java -jar $SNAP/jar/plantuml.jar "$@"
