from dagster import pipeline

from .solids import hello_world


@pipeline
def my_other_pipeline():
    hello_world()
