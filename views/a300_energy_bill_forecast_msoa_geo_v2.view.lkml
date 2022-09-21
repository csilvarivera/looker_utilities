# The name of this view in Looker is "A300 Energy Bill Forecast Msoa Geo V2"
view: a300_energy_bill_forecast_msoa_geo_v2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a300_energy_bill_forecast_msoa_geo_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age 0 15" in Explore.

  measure: age_0_15 {
    type: number
    sql: ${TABLE}.AGE_0_15 ;;
  }

  measure: age_16_64 {
    type: number
    sql: ${TABLE}.AGE_16_64 ;;
  }

  measure: age_65_above {
    type: number
    sql: ${TABLE}.AGE_65_ABOVE ;;
  }

  measure: all_ages {
    type: number
    sql: ${TABLE}.ALL_AGES ;;
  }

  measure: avg_annual_bill_elec {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_ELEC ;;
  }

  measure: avg_annual_bill_energy {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_ENERGY ;;
  }

  measure: avg_annual_bill_gas {
    type: number
    sql: ${TABLE}.AVG_ANNUAL_BILL_GAS ;;
  }

  dimension: energy_bill_pct_net_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_NET_ANNUAL_INCOME ;;
  }

  measure: energy_bill_pct_total_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_TOTAL_ANNUAL_INCOME ;;
  }

  measure: households_in_poverty {
    type: number
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;
  }

  measure: housing_cost {
    type: number
    sql: ${TABLE}.HOUSING_COST ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: income_after_housing_energy {
    type: number
    sql: ${TABLE}.INCOME_AFTER_HOUSING_ENERGY ;;
  }

  dimension: ladcd {
    type: string
    sql: ${TABLE}.LADCD ;;
  }

  dimension: ladnm {
    type: string
    sql: ${TABLE}.LADNM ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
  }

  dimension: msoa_geo_centroid {
    type: string
    sql: ${TABLE}.MSOA_geo_centroid ;;
  }

  dimension: msoa_geo_centroid_lat {
    type: number
    sql: ${TABLE}.MSOA_geo_centroid_lat ;;
  }

  dimension: msoa_geo_centroid_lon {
    type: number
    sql: ${TABLE}.MSOA_geo_centroid_lon ;;
  }

  dimension: msoa_latlong{
    type: location
    sql_latitude: ${msoa_geo_centroid_lat};;
    sql_longitude: ${msoa_geo_centroid_lon};;
  }

  dimension: nat22cd {
    type: string
    sql: ${TABLE}.nat22cd ;;
  }

  dimension: nat22nm {
    type: string
    sql: ${TABLE}.nat22nm ;;
  }

  measure: net_annual_income {
    type: number
    sql: ${TABLE}.NET_ANNUAL_INCOME ;;
  }

  measure: net_annual_income_after_housing_costs {
    type: number
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  measure: net_income_before_housing_costs {
    type: number
    sql: ${TABLE}.NET_INCOME_BEFORE_HOUSING_COSTS ;;
  }

  measure: number_of_households {
    type: number
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  measure: rating_agg_all {
    type: number
    sql: ${TABLE}.RATING_AGG_ALL ;;
  }

  measure: rating_agg_good {
    type: number
    sql: ${TABLE}.RATING_AGG_GOOD ;;
  }

  measure: rating_agg_poor {
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

  measure: total_annual_income {
    type: number
    sql: ${TABLE}.TOTAL_ANNUAL_INCOME ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

}
