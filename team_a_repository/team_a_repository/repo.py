from dagster import repository

from .pipelines import my_pipeline
from .schedules import my_daily_schedule


@repository
def my_repository():
    return [my_pipeline, my_daily_schedule]
