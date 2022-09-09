#!/bin/bash
declare -a PluginList=(
    "github-branch-source"
    "gradle"
    "ldap"
    "mailer"
)

dirname "$0"

for plugin in ${PluginList[@]}; do
   java -jar "$(dirname "$0")/jenkins-cli.jar" -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done