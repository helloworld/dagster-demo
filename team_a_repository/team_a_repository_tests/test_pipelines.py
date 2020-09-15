from dagster import execute_pipeline

from team_a_repository.pipelines import my_pipeline


def test_my_pipeline():
    result = execute_pipeline(my_pipeline)
    assert result.success
