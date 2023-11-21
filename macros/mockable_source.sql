{% macro mockable_source(source_name, table, sample) %}
    {% if target.name.lower() in ['ci', 'dev', 'default'] %} {{ ref(sample) }}
    {% else %} {{ source(source_name, table) }}
    {% endif %}
{% endmacro %}
