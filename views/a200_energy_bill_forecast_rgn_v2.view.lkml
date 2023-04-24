# The name of this view in Looker is "A200 Energy Bill Forecast Rgn V2"
view: a200_energy_bill_forecast_rgn_v2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_energy_bill_forecast_rgn_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age 0 15" in Explore.

  dimension: age_0_15 {
    type: number
    sql: ${TABLE}.AGE_0_15 ;;
  }

  dimension: age_16_64 {
    type: number
    sql: ${TABLE}.AGE_16_64 ;;
  }

  dimension: age_65_above {
    type: number
    sql: ${TABLE}.AGE_65_ABOVE ;;
  }

  dimension: all_ages {
    type: number
    sql: ${TABLE}.ALL_AGES ;;
  }

  dimension: avg_annual_bill_elec {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_ELEC ;;
  }

  dimension: avg_annual_bill_energy {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_ENERGY ;;
  }

  dimension: avg_annual_bill_gas {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_GAS ;;
  }

  dimension: energy_bill_pct_net_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_NET_ANNUAL_INCOME ;;
  }

  dimension: energy_bill_pct_total_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_TOTAL_ANNUAL_INCOME ;;
  }

  dimension: households_in_poverty {
    type: number
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;
  }

  dimension: income_after_housing_energy {
    type: number
    sql: ${TABLE}.INCOME_AFTER_HOUSING_ENERGY ;;
  }

  dimension: net_annual_income {
    type: number
    sql: ${TABLE}.NET_ANNUAL_INCOME ;;
  }

  dimension: net_annual_income_after_housing_costs {
    type: number
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  dimension: net_income_before_housing_costs {
    type: number
    sql: ${TABLE}.NET_INCOME_BEFORE_HOUSING_COSTS ;;
  }

  dimension: number_of_households {
    type: number
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_households {
    type: sum
    sql: ${number_of_households} ;;
  }

  measure: average_number_of_households {
    type: average
    sql: ${number_of_households} ;;
  }

  dimension: rating_agg_all {
    type: number
    sql: ${TABLE}.RATING_AGG_ALL ;;
  }

  dimension: rating_agg_good {
    type: number
    sql: ${TABLE}.RATING_AGG_GOOD ;;
  }

  dimension: rating_agg_poor {
    type: number
    sql: ${TABLE}.RATING_AGG_POOR ;;
  }

  dimension: rgn11_cd {
    type: string
    sql: ${TABLE}.RGN11CD ;;
  }

  dimension: rgn11_nm {
    type: string
    sql: ${TABLE}.RGN11NM ;;
  }

  dimension: total_annual_income {
    type: number
    sql: ${TABLE}.TOTAL_ANNUAL_INCOME ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
