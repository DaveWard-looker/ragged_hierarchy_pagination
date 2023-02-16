connection: "looker_private_demo"

include: "/views/*.view.lkml"
include: "/views/drillling_views/child_drills/*.view.lkml"
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: ragged_data {
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
    sql_on: ${ragged_data.group_code} = cd_ ;;
    relationship: one_to_many
  }
}

explore: ragged_dt {}

explore: recursive_parent {}
