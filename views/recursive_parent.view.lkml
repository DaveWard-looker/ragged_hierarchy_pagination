# The name of this view in Looker is "Recursive Parent"
view: recursive_parent {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.recursive_parent`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Group Code" in Explore.

  dimension: pk_dim {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${group_code},${parent_code},${level}) ;;
  }


  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_level {
    type: sum
    sql: ${level} ;;
  }

  measure: average_level {
    type: average
    sql: ${level} ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
