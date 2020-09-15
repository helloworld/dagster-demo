from dagster import repository

from .pipelines import my_other_pipeline


@repository
def my_repository():
    return [my_other_pipeline]
