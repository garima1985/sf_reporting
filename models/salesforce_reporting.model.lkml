connection: "salesforce"

# include all the views
include: "/views/**/*.view"

datagroup: salesforce_reporting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: salesforce_reporting_default_datagroup

explore: salesforce_ddmonly_lineitems {}
