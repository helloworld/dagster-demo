from dagster import execute_pipeline

from team_b_repository.pipelines import my_other_pipeline


def test_my_pipeline():
    result = execute_pipeline(my_other_pipeline)
    assert result.success
