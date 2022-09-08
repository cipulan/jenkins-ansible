#!/bin/bash
declare -a PluginList=(
    "ant"
    "antisamy-markup-formatter"
    "build-timeout"
    "cloudbees-folder"
    "configuration-as-code"
    "credentials-binding"
    "email-ext"
    "git"
    "github-branch-source"
    "gradle"
    "ldap"
    "mailer"
    "matrix-auth"
    "pam-auth"
    "pipeline-github-lib"
    "pipeline-stage-view"
    "ssh-slaves"
    "timestamper"
    "workflow-aggregator"
    "ws-cleanup"
)

dirname "$0"

for plugin in ${PluginList[@]}; do
   java -jar "$(dirname "$0")/jenkins-cli.jar" -auth admin:admin -s http://localhost:8080/ install-plugin $plugin
done