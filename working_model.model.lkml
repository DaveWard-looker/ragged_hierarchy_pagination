connection: "looker_private_demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/views/drillling_views/parent_drills.view.lkml"
include: "/views/drillling_views/child_drills.view.lkml"
include: "/views/order_items_paginated.view.lkml"


datagroup: nightly_rebuild {
  sql_trigger: select current_date() ;;
}

explore: order_items_paginated {
  always_filter: {
    filters: [page : "1",number_per_page: "500"]
  }
}

explore: ragged_data {

}




# recommend to move all drilling logic into a refinement in order to ensure higher level explore join logic remains concise.

explore: +ragged_data  {
  # create a series of joins which go from the base group code out to the various layered hierarchy tables
  join: cd_1 {
    sql_on: ${ragged_data.group_code} = ${cd_1.group_code} ;;
    relationship: one_to_many
  }
  join: cd_2 {
    sql_on: ${ragged_data.group_code} = ${cd_2.group_code} ;;
    relationship: one_to_many
  }
  join: cd_3 {
    sql_on: ${ragged_data.group_code} = ${cd_3.group_code} ;;
    relationship: one_to_many
  }
  join: cd_4 {
    sql_on: ${ragged_data.group_code} = ${cd_4.group_code} ;;
    relationship: one_to_many
  }
  join: cd_5 {
    sql_on: ${ragged_data.group_code} = ${cd_5.group_code} ;;
    relationship: one_to_many
  }
  join: cd_6 {
    sql_on: ${ragged_data.group_code} = ${cd_6.group_code} ;;
    relationship: one_to_many
  }
  join: cd_7 {
    sql_on: ${ragged_data.group_code} = ${cd_7.group_code} ;;
    relationship: one_to_many
  }
  join: cd_8 {
    sql_on: ${ragged_data.group_code} = ${cd_8.group_code} ;;
    relationship: one_to_many
  }
  join: cd_9 {
    sql_on: ${ragged_data.group_code} = ${cd_9.group_code} ;;
    relationship: one_to_many
  }
  join: cd_10 {
    sql_on: ${ragged_data.group_code} = ${cd_10.group_code} ;;
    relationship: one_to_many
  }
  join: cd_11 {
    sql_on: ${ragged_data.group_code} = ${cd_11.group_code} ;;
    relationship: one_to_many
  }
  join: cd_12 {
    sql_on: ${ragged_data.group_code} = ${cd_12.group_code} ;;
    relationship: one_to_many
  }
  join: cd_13 {
    sql_on: ${ragged_data.group_code} = ${cd_13.group_code} ;;
    relationship: one_to_many
  }
  join: cd_14 {
    sql_on: ${ragged_data.group_code} = ${cd_14.group_code} ;;
    relationship: one_to_many
  }
  join: cd_15 {
    sql_on: ${ragged_data.group_code} = ${cd_15.group_code} ;;
    relationship: one_to_many
  }

  # Repeat this process to create a series of parent code joins

  join: pd_1 {
    sql_on: ${ragged_data.group_code} = ${pd_1.group_code} ;;
    relationship: one_to_many
  }
  join: pd_2 {
    sql_on: ${ragged_data.group_code} = ${pd_2.group_code} ;;
    relationship: one_to_many
  }
  join: pd_3 {
    sql_on: ${ragged_data.group_code} = ${pd_3.group_code} ;;
    relationship: one_to_many
  }
  join: pd_4 {
    sql_on: ${ragged_data.group_code} = ${pd_4.group_code} ;;
    relationship: one_to_many
  }
  join: pd_5 {
    sql_on: ${ragged_data.group_code} = ${pd_5.group_code} ;;
    relationship: one_to_many
  }
  join: pd_6 {
    sql_on: ${ragged_data.group_code} = ${pd_6.group_code} ;;
    relationship: one_to_many
  }
  join: pd_7 {
    sql_on: ${ragged_data.group_code} = ${pd_7.group_code} ;;
    relationship: one_to_many
  }
  join: pd_8 {
    sql_on: ${ragged_data.group_code} = ${pd_8.group_code} ;;
    relationship: one_to_many
  }
  join: pd_9 {
    sql_on: ${ragged_data.group_code} = ${pd_9.group_code} ;;
    relationship: one_to_many
  }
  join: pd_10 {
    sql_on: ${ragged_data.group_code} = ${pd_10.group_code} ;;
    relationship: one_to_many
  }
  join: pd_11 {
    sql_on: ${ragged_data.group_code} = ${pd_11.group_code} ;;
    relationship: one_to_many
  }
  join: pd_12 {
    sql_on: ${ragged_data.group_code} = ${pd_12.group_code} ;;
    relationship: one_to_many
  }
  join: pd_13 {
    sql_on: ${ragged_data.group_code} = ${pd_13.group_code} ;;
    relationship: one_to_many
  }
  join: pd_14 {
    sql_on: ${ragged_data.group_code} = ${pd_14.group_code} ;;
    relationship: one_to_many
  }
  join: pd_15 {
    sql_on: ${ragged_data.group_code} = ${pd_15.group_code} ;;
    relationship: one_to_many
  }
}
