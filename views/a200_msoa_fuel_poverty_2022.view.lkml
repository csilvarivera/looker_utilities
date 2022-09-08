# The name of this view in Looker is "A200 Msoa Fuel Poverty 2022"
view: a200_msoa_fuel_poverty_2022 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_msoa_fuel_poverty_2022`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Households In Poverty" in Explore.

  dimension: households_in_poverty {
    type: number
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
  }

  dimension: number_of_households {
    type: number
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  dimension: percent_fuel_poor_tier {
    type: tier
    tiers: [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]
    style: relational
    sql: ${TABLE}.PERCENT_FUEL_POOR ;;
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

  measure: total_households_in_poverty {
    type: sum
    sql: ${households_in_poverty} ;;
  }



  dimension: percent_fuel_poor {
    type: number
    sql: ${TABLE}.PERCENT_FUEL_POOR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
