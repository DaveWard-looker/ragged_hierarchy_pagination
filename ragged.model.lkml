connection: "looker_private_demo"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
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
  join: recursive_parent {
    sql_on: ${ragged_data.group_code} = ${recursive_parent.group_code}
    and ${recursive_child.level} = 1
    ;;
    relationship: one_to_many
  }
  join: recursive_child {
    sql_on: ${ragged_data.group_code} = ${recursive_child.group_code}
    and ${recursive_child.level} = 1
    ;;
    relationship: one_to_many
  }
}

explore: ragged_dt {}

explore: recursive_parent {}
