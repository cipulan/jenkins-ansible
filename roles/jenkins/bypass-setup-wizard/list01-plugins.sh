#!/bin/bash
declare -a PluginList=(
    "ant"
    "antisamy-markup-formatter"
    "build-timeout"
    "cloudbees-folder"
)

dirname "$0"

for plugin in ${PluginList[@]}; do
   java -jar "$(dirname "$0")/jenkins-cli.jar" -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done