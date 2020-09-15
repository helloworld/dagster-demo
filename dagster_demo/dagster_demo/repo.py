from dagster import repository

from .pipelines import my_pipeline


@repository
def my_repository():
    return [my_pipeline]
