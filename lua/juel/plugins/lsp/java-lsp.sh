#!/bin/bash

JDTLS_HOME=/opt/homebrew/Cellar/jdtls/1.36.0/libexec
WORKSPACE=$1

java -Declipse.application=org.eclipse.jdt.ls.core.id1 \
    -Dosgi.bundles.defaultStartLevel=4 \
    -Declipse.product=org.eclipse.jdt.ls.core.product \
    -Dlog.level=ALL \
    -noverify \
    -Xmx1G \
    -jar $JDTLS_HOME/plugins/org.eclipse.equinox.launcher_*.jar \
    -configuration $JDTLS_HOME/config_mac \
    -data $WORKSPACE

