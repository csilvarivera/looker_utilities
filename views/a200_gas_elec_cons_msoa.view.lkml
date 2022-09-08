# The name of this view in Looker is "A200 Gas Elec Cons Msoa"
view: a200_gas_elec_cons_msoa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_gas_elec_cons_msoa`
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

  dimension: mean_consumption_kwh_per_meter {
    type: number
    sql: ${TABLE}.MEAN_CONSUMPTION_KWH_PER_METER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_mean_consumption_kwh_per_meter {
    type: sum
    sql: ${mean_consumption_kwh_per_meter} ;;
  }

  measure: average_mean_consumption_kwh_per_meter {
    type: average
    sql: ${mean_consumption_kwh_per_meter} ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
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
