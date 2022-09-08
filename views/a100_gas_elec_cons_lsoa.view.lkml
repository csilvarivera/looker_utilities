# The name of this view in Looker is "A100 Gas Elec Cons Lsoa"
view: a100_gas_elec_cons_lsoa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a100_gas_elec_cons_lsoa`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Energy Type" in Explore.

  dimension: energy_type {
    type: string
    sql: ${TABLE}.ENERGY_TYPE ;;
  }

  dimension: local_authority {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY ;;
  }

  dimension: local_authority_code {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY_CODE ;;
  }

  dimension: lower_layer_super_output_area {
    type: string
    sql: ${TABLE}.LOWER_LAYER_SUPER_OUTPUT_AREA ;;
  }

  dimension: lsoa_code {
    type: string
    sql: ${TABLE}.LSOA_CODE ;;
  }

  dimension: mean_consumption_kwh_per_meter {
    type: number
    sql: ${TABLE}.MEAN_CONSUMPTION_KWH_PER_METER ;;
  }

  dimension: median_consumption_kwh_per_meter {
    type: number
    sql: ${TABLE}.MEDIAN_CONSUMPTION_KWH_PER_METER ;;
  }

  dimension: middle_layer_super_output_area {
    type: string
    sql: ${TABLE}.MIDDLE_LAYER_SUPER_OUTPUT_AREA ;;
  }

  dimension: msoa_code {
    type: string
    sql: ${TABLE}.MSOA_CODE ;;
  }

  dimension: number_of_non_consuming_meters {
    type: number
    sql: ${TABLE}.NUMBER_OF_NON_CONSUMING_METERS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_non_consuming_meters {
    type: sum
    sql: ${number_of_non_consuming_meters} ;;
  }

  measure: average_number_of_non_consuming_meters {
    type: average
    sql: ${number_of_non_consuming_meters} ;;
  }

  dimension: numberof_meters {
    type: number
    sql: ${TABLE}.NUMBEROF_METERS ;;
  }

  dimension: total_consumption_kwh {
    type: number
    sql: ${TABLE}.TOTAL_CONSUMPTION_KWH ;;
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
