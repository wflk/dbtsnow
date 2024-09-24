-- macros/log_query_results.sql
{% macro log_query_results(model_name) %}
    {% set query %}
        SELECT * FROM {{ ref(model_name) }} LIMIT 10
    {% endset %}

    {% set results = run_query(query) %}

    {% if execute %}
        {% do log("Results from " ~ model_name ~ ":") %}
        {% for row in results.rows %}
            {% do log(row, info=True) %}
        {% endfor %}
    {% endif %}
{% endmacro %}
