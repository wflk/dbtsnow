{% macro upload_file() %}
  {% set sql %}
    PUT file://*.* @~ AUTO_COMPRESS=FALSE;
  {% endset %}
  
  {% do run_query(sql) %}
{% endmacro %}
