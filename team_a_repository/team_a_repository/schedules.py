import datetime

from dagster import daily_schedule

from .pipelines import my_pipeline


@daily_schedule(pipeline_name=my_pipeline.name, start_date=datetime.datetime(2020, 9, 1))
def my_daily_schedule(_):
    return {}
