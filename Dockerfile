FROM python:3.7-slim

RUN pip install dagster dagit

RUN mkdir -p /opt/dagster/dagster_home /opt/dagster/app

# Copy your code and entrypoint.sh to /opt/dagster/app
COPY dagster_demo entrypoint.sh /opt/dagster/app/

# Copy dagster instance YAML to $DAGSTER_HOME
COPY dagster.yaml /opt/dagster/dagster_home/

WORKDIR /opt/dagster/app

RUN chmod +x entrypoint.sh

EXPOSE 3000

ENTRYPOINT ["/opt/dagster/app/entrypoint.sh"]