{% macro brute_force_cluster_list(cluster_by) %}

    {{ log("TEST", info=True) }}

    {% if ',' in cluster_by %}

        {% set cluster_by = cluster_by | replace('[', '') | replace(']', '') | replace("'", '') %}
        {% set cluster_by = cluster_by[2:] %}
        {% set cluster_by = cluster_by[:-2] %}

    {% endif %}

    {% set cluster_by = cluster_by.split(", ")%}

    {{ log(cluster_by, info=True) }}

    {{ return(cluster_by) }}

{% endmacro %}