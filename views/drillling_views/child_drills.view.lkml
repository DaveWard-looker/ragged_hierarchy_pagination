view: cd_1 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 1
      ;;
      # persist_for: "24 hours"
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
    drill_fields: [cd_2.child_code, pd_2.parent_code]
  }
}

view: cd_2 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 2
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_3.child_code, pd_3.parent_code]
  }
}

view: cd_3 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 3
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_4.child_code, pd_4.parent_code]
  }
}

view: cd_4 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 4
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_5.child_code, pd_2.parent_code]
  }
}

view: cd_5 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 5
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_6.child_code, pd_6.parent_code]
  }
}

view: cd_6 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 6
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_7.child_code, pd_7.parent_code]
  }
}

view: cd_7 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 7
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_8.child_code]
  }
}

view: cd_8 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 8
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_9.child_code]
  }
}

view: cd_9 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 9
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_10.child_code]
  }
}

view: cd_10 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 10
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_11.child_code]
  }
}

view: cd_11 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 11
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_12.child_code]
  }
}

view: cd_12 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 12
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_13.child_code]
  }
}

view: cd_13 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 13
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_14.child_code]
  }
}

view: cd_14 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 14
      ;;
    # persist_for: "24 hours"
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
    drill_fields: [cd_15.child_code]
  }
}

view: cd_15 {
  derived_table: {
    sql: select * from `daveward-ps-dev.daveward_demodataset.recursive_child` where level = 15
      ;;
    # persist_for: "24 hours"
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

  }
}
