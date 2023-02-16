view: ragged_dt {
  derived_table: {
    sql: select
    {% if child_code._in_query  %}
    group_code as group_code,
    child_code as child_code,
    group_code as parent_code,
    value,
    {% elsif parent_code._in_query  %}
    parent_code as group_code,
    group_code,
    group_code as parent_code,
    value,
    {% else %}
    group_code,
    child_code,
    parent_code,
    value
    {% endif %}
    from  `daveward-ps-dev.daveward_demodataset.ragged_data` rd

    where 1=1
    AND {% condition parent_code %} rd.group_code {% endcondition %}
    AND {% condition child_code %} rd.group_code {% endcondition %}
      ;;

  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
    drill_fields: [detail*]
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [detail*]
  }

  dimension: child_code {
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [detail*]
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  set: detail {
    fields: [group_code, parent_code, child_code, value]
  }
}
