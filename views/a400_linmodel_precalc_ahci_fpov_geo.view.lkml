# The name of this view in Looker is "A400 Linmodel Precalc Ahci Fpov Geo"
view: a400_linmodel_precalc_ahci_fpov_geo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a400_linmodel_precalc_ahci_fpov_geo`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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
    html: {{msoa11_nm._rendered_value }};;
  }

  dimension: nat22cd {
    type: string
    sql: ${TABLE}.nat22cd ;;
  }

  dimension: nat22nm {
    type: string
    sql: ${TABLE}.nat22nm ;;
  }

  measure: ac_num_person_in_poverty {
    type: sum
    sql: ${TABLE}.AC_NUM_PERSON_IN_POVERTY ;;
  }

  measure: ac_num_household_in_poverty {
    type: sum
    sql: ${TABLE}.AC_NUM_HOUSEHOLD_IN_POVERTY ;;
  }

  measure: ac_pct_household_in_poverty {
    type: average
    sql: ${TABLE}.AC_PCT_HOUSEHOLD_IN_POVERTY ;;
  }

  measure: avg_household_size {
    type: average
    sql: ${TABLE}.AVG_HOUSEHOLD_SIZE ;;
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

  measure: net_annual_income_after_housing_costs {
    type: sum
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  measure: number_of_households {
    type: sum
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  dimension: pct_income_decrease {
    type: number
    sql: ${TABLE}.PCT_INCOME_DECREASE ;;
  }

  measure: pred_num_chg_household_in_poverty {
    type: sum
    sql: ${TABLE}.PRED_NUM_CHG_HOUSEHOLD_IN_POVERTY ;;
  }

  measure: pred_num_chg_person_in_poverty {
    type: sum
    sql: ${TABLE}.PRED_NUM_CHG_PERSON_IN_POVERTY ;;
  }

  measure: pred_num_household_in_poverty {
    type: sum
    sql: ${TABLE}.PRED_NUM_HOUSEHOLD_IN_POVERTY ;;
  }

  measure: pred_num_person_in_poverty {
    type: sum
    sql: ${TABLE}.PRED_NUM_PERSON_IN_POVERTY ;;
  }

  measure: pred_pct_chg_household_in_poverty {
    type: average
    sql: ${TABLE}.PRED_PCT_CHG_HOUSEHOLD_IN_POVERTY ;;
  }

  measure: pred_pct_household_in_poverty {
    type: average
    sql: ${TABLE}.PRED_PCT_HOUSEHOLD_IN_POVERTY ;;
  }

  dimension: rgn11_cd {
    type: string
    sql: ${TABLE}.RGN11CD ;;
  }

  dimension: rgn11_nm {
    type: string
    sql: ${TABLE}.RGN11NM ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

}
