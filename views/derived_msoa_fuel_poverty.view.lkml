view: derived_msoa_fuel_poverty {
  derived_table: {
    sql: SELECT MSOA11NM, NUMBER_OF_HOUSEHOLDS, HOUSEHOLDS_IN_POVERTY, ROUND(PERCENT_FUEL_POOR,2) AS PERCENT_FUEL_POOR
      FROM `utilitieshub-demo-sandbox.utilitieshubdataset.a200_msoa_fuel_poverty_2022` fpov
      ORDER BY HOUSEHOLDS_IN_POVERTY DESC
      LIMIT 20
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
  }

  measure: number_of_households {
    type: sum
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  measure: households_in_poverty {
    type: sum
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;
  }

  measure: percent_fuel_poor {
    type: average
    sql: ${TABLE}.PERCENT_FUEL_POOR ;;
  }

  set: detail {
    fields: [msoa11_nm, number_of_households, households_in_poverty, percent_fuel_poor]
  }
}
