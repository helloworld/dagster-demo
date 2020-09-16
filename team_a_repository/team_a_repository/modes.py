from dagster_celery import celery_executor

from dagster import ModeDefinition

celery_mode_def = ModeDefinition(executor_defs=[celery_executor])
