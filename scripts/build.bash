curl -L -o plantuml.jar "https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar"

if [ ! -f plantuml.jar ]; then
echo "Failed to download PlantUML JAR file."
exit 1
fi

mkdir -p $SNAPCRAFT_PART_INSTALL/{jar,bin}

cp plantuml.jar $SNAPCRAFT_PART_INSTALL/jar/plantuml.jar

cp scripts/plantuml.bash $SNAPCRAFT_PART_INSTALL/bin/plantuml-wrapper
cp scripts/plantuml-gui.bash $SNAPCRAFT_PART_INSTALL/bin/plantuml-gui-wrapper

chmod +x $SNAPCRAFT_PART_INSTALL/bin/plantuml-wrapper
chmod +x $SNAPCRAFT_PART_INSTALL/bin/plantuml-gui-wrapper
