#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export RESIN_HOME=${IROOT}/resin-4.0.41

export GRAILS_PATH=${IROOT}/grails-2.4.4/bin/

fw_depends grails resin
