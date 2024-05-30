# initial commit
view: cd_1 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 1
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_2.child_code,cdp_1.parent_code]
  }
}

view: cd_2 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 2
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_3.child_code,cdp_2.parent_code]
  }
}

view: cd_3 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 3
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_4.child_code,cdp_3.parent_code]
  }
}

view: cd_4 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 4
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_5.child_code, cdp_4.parent_code]
  }
}

view: cd_5 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 5
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_6.child_code,cdp_5.parent_code]
  }
}

view: cd_6 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 6
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_7.child_code, pd_6.parent_code]
  }
}

view: cd_7 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 7
      ;;
    datagroup_trigger: nightly_rebuild

  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_8.child_code, pd_7.parent_code]
  }
}

view: cd_8 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 8
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_9.child_code, pd_8.parent_code]
  }
}

view: cd_9 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 9
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_10.child_code, pd_9.parent_code]
  }
}

view: cd_10 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 10
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_11.child_code, pd_10.parent_code]
  }
}

view: cd_11 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 11
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_12.child_code, pd_11.parent_code]
  }
}

view: cd_12 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 12
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_13.child_code, pd_12.parent_code]
  }
}

view: cd_13 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 13
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_14.child_code, pd_13.parent_code]
  }
}

view: cd_14 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 14
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [cd_15.child_code, pd_14.parent_code]
  }
}

view: cd_15 {
  view_label: ""
  fields_hidden_by_default: yes
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child_t` where level = 15
      ;;
    datagroup_trigger: nightly_rebuild
  }
  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${group_code}||${child_code} ;;
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.group_code ;;
  }

  dimension: child_code {
    label: "Child Code"
    type: string
    sql: ${TABLE}.child_code ;;
    drill_fields: [pd_15.parent_code]
  }
}
