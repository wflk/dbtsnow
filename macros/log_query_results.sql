-- macros/run_hardcoded_query.sql
{% macro run_hardcoded_query() %}
    {% set query %}
        SELECT 1
    {% endset %}

    {% set results = run_query(query) %}

    {% if execute %}
        {% do log("Query results:", info=True) %}
        {% do results.print_table() %}
    {% endif %}
{% endmacro %}
