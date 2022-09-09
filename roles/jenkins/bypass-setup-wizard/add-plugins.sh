#!/bin/bash
declare -a PluginList=(
    "gitea"
    "blueocean"
    "docker-plugin"
)

dirname "$0"

for plugin in ${PluginList[@]}; do
   java -jar "$(dirname "$0")/jenkins-cli.jar" -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done