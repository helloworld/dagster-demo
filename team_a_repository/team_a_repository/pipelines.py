from dagster import pipeline

from .solids import hello_world
from .modes import celery_mode_def


@pipeline(mode_defs=[celery_mode_def])
def my_pipeline():
    hello_world()
