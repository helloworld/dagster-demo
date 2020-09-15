FROM python:3.8.2-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE 1
# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED 1

# Install and setup poetry
RUN pip install -U pip \
    && apt-get update \
    && apt install -y curl netcat \
    && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH="${PATH}:/root/.poetry/bin"

# Create DAGSTER_HOME and folder for code
RUN mkdir -p /opt/dagster/dagster_home /opt/dagster/app

# Cache poetry files
WORKDIR /opt/dagster/app
COPY poetry.lock pyproject.toml /opt/dagster/app/
RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY . .
RUN chmod +x entrypoint.sh

EXPOSE 3000

# run entrypoint.sh
ENTRYPOINT ["/opt/dagster/app/entrypoint.sh"]