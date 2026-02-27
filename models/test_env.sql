 {{ log("ENV_TEST_VALUE: " ~ env_var("DBT_TEST_VAR", "NOT_SET"), info=True) }}
  SELECT 1
