# The name of this view in Looker is "A200 Ecp Certificates Msoa Agg"
view: a200_ecp_certificates_msoa_agg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_ecp_certificates_msoa_agg`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Count Ratings" in Explore.

  dimension: count_ratings {
    type: number
    sql: ${TABLE}.COUNT_RATINGS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_ratings {
    type: sum
    sql: ${count_ratings} ;;
  }

  measure: average_count_ratings {
    type: average
    sql: ${count_ratings} ;;
  }

  dimension: current_energy_rating {
    type: string
    sql: ${TABLE}.CURRENT_ENERGY_RATING ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
