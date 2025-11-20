{% macro get_season(col) %}
    case
        when month(to_timestamp({{ col }})) in (12, 1, 2)
        then 'WINTER'
        when month(to_timestamp({{ col }})) in (3, 4, 5)
        then 'SPRING'
        when month(to_timestamp({{ col }})) in (6, 7, 8)
        then 'SUMMER'
        else 'AUTUMN'
    end
{% endmacro %}
{% macro day_type(col) %}
    case
        when dayname(to_timestamp({{ col }})) in ('Sat', 'Sun')
        then 'WEEKEND'
        else 'BUSINESSDAY'
    end
{% endmacro %}
