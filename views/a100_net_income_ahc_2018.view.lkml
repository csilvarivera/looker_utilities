# The name of this view in Looker is "A100 Net Income Ahc 2018"
view: a100_net_income_ahc_2018 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a100_net_income_ahc_2018`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Confidence Interval" in Explore.

  dimension: confidence_interval {
    type: number
    sql: ${TABLE}.CONFIDENCE_INTERVAL ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_confidence_interval {
    type: sum
    sql: ${confidence_interval} ;;
  }

  measure: average_confidence_interval {
    type: average
    sql: ${confidence_interval} ;;
  }

  dimension: local_authority_code {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY_CODE ;;
  }

  dimension: local_authority_name {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY_NAME ;;
  }

  dimension: lower_confidence_limit {
    type: number
    sql: ${TABLE}.LOWER_CONFIDENCE_LIMIT ;;
  }

  dimension: msoa_code {
    type: string
    sql: ${TABLE}.MSOA_CODE ;;
  }

  dimension: msoa_name {
    type: string
    sql: ${TABLE}.MSOA_NAME ;;
  }

  dimension: net_annual_income_after_housing_costs {
    type: number
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: upper_confidence_limit {
    type: number
    sql: ${TABLE}.UPPER_CONFIDENCE_LIMIT ;;
  }

  measure: count {
    type: count
    drill_fields: [region_name, local_authority_name, msoa_name]
  }
}
