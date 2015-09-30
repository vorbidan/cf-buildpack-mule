#!/usr/bin/env bash

# debug output
pwd
ls -la $HOME

# Create environment for Mule execution
export JAVA_HOME=$HOME/local/openjdk-1.8.0_45
export MULE_HOME=$HOME/local/mule-standalone-3.7.0
export PATH=$JAVA_HOME/bin:$MULE_HOME/bin:$PATH

# debug output
echo “List of files in JAVA_HOME”
ls -al $JAVA_HOME
echo “List of files in MULE_HOME”
ls -al $MULE_HOME
echo “List of applications in Mule apps”
ls -al $MULE_HOME/apps

echo "Starting app with launch.sh : CFBPM_PROPS = $CFBPM_PROPS"

echo "org.osgi.service.http.port=$VCAP_APP_PORT"

# start Mule ..
mule -M-Dhttp.port=$PORT