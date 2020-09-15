#!/bin/sh
export DAGSTER_HOME=/opt/dagster/dagster_home

# Launch Dagit as a service
DAGSTER_HOME=/opt/dagster/dagster_home dagster api grpc --module-name team_b_repository.repo --host 0.0.0.0 --port 4266
