from dagster import execute_pipeline

from dagster_demo.pipelines import my_pipeline


def test_my_pipeline():
    result = execute_pipeline(my_pipeline)
    assert result.success
