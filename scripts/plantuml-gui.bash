#!/bin/bash
set -e

# GUI-specific Java options for better font rendering
export _JAVA_OPTIONS="-Duser.home=$SNAP_USER_DATA -Djava.util.prefs.systemRoot=$SNAP_USER_DATA/.java -Djava.util.prefs.userRoot=$SNAP_USER_DATA/.java/.userPrefs -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"

# Launch GUI mode
exec java -jar $SNAP/jar/plantuml.jar --gui "$@"
