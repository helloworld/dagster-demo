FROM python:3.8.2-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1
# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

# Install and setup pip
RUN pip install -U pip \
    && apt-get update

# Create DAGSTER_HOME and folder for code
RUN mkdir -p /opt/dagster/dagster_home /opt/dagster/app

WORKDIR /opt/dagster/app

# Install requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN pip install -e dagster_demo

EXPOSE 3000

RUN chmod +x entrypoint.sh