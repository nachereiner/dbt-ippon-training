{% macro mockable_source(source_name, table, sample) %}
    {% if target.name == "dev" %} {{ ref(sample) }}
    {% else %} {{ source(source_name, table) }}
    {% endif %}
{% endmacro %}
