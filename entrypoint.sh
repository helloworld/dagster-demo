#!/bin/sh
export DAGSTER_HOME=/opt/dagster/dagster_home

# Launch Dagit as a service
DAGSTER_HOME=/opt/dagster/dagster_home dagit -h 0.0.0.0 -p 3000