#!/bin/bash
declare -a PluginList=(
    "matrix-auth"
    "pam-auth"
    "pipeline-github-lib"
    "pipeline-stage-view"
)

dirname "$0"

for plugin in ${PluginList[@]}; do
   java -jar "$(dirname "$0")/jenkins-cli.jar" -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done