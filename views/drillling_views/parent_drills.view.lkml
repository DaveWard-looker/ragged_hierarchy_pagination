# update
view: pd_1 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 1
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 2
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 3
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 4
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 5
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 6
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 7
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 8
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 9
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 10
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 11
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 12
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 13
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 14
      ;;
    datagroup_trigger: nightly_rebuild
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
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_parent_t` where level = 15
      ;;
    datagroup_trigger: nightly_rebuild
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
