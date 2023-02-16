view: pd_1 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 1
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_2.parent_code]
  }
}

view: pd_2 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 2
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_3.parent_code]
  }
}

view: pd_3 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 3
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_4.parent_code]
  }
}

view: pd_4 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 4
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_5.parent_code]
  }
}

view: pd_5 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 5
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_6.parent_code]
  }
}

view: pd_6 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 6
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_7.parent_code]
  }
}

view: pd_7 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 7
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_8.parent_code]
  }
}

view: pd_8 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 8
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_9.parent_code]
  }
}

view: pd_9 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 9
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_10.parent_code]
  }
}

view: pd_10 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 10
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_11.parent_code]
  }
}

view: pd_11 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 11
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_12.parent_code]
  }
}

view: pd_12 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 12
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_13.parent_code]
  }
}

view: pd_13 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 13
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_14.parent_code]
  }
}

view: pd_14 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 14
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;
    drill_fields: [pd_15.parent_code]
  }
}

view: pd_15 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent` where level = 15
      ;;
    # persist_for: "24 hours"
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${parent_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.parent_code ;;

  }
}
