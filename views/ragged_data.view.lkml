# The name of this view in Looker is "Ragged Data"
view: ragged_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.ragged_data_t`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Child Code" in Explore


  dimension: pk_dim {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${group_code},${child_code},${parent_code}) ;;
  }


  dimension: child_code {
    type: string
    hidden: yes
    sql: ${TABLE}.child_code ;;
    # drill_fields: [group_code,group_code,child_code]
    # link: {
    #   label: "drill to child level"
    #   url: "/explore/ragged/ragged_data?fields=ragged_data.group_code,ragged_data.total_value&f[ragged_data.group_code]={{value}}&sorts=ragged_data.group_code&limit=500"
    # }

  }

  dimension: group_code {
    sql: ${TABLE}.group_code ;;
    drill_fields: [cd_1.child_code,pd_1.parent_code]

  }

  dimension: parent_code {
    hidden: yes
    type: string
    sql: ${TABLE}.parent_code ;;
    # drill_fields: [group_code,child_code,parent_code]
  }

  dimension: value {
    hidden: yes
    type: string
    sql: CAST(${TABLE}.value AS NUMERIC) ;;
  }

  measure: total_value {
    type: sum
    sql: ${value} ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
