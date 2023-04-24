# The name of this view in Looker is "A300 Energy Bill Forecast Msoa Geo"
view: a300_energy_bill_forecast_msoa_geo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a300_energy_bill_forecast_msoa_geo`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age 0 15" in Explore.


  parameter: x_axis_param {
    type:  unquoted
    description: "Independent Variable used in correlations"
    allowed_value: {label: "Net Annual Income After Housing Cost" value: "AHCI"}
    allowed_value: {label: "Average Household Size" value: "HSZE"}
    allowed_value: {label: "Percentage of population over 65" value: "PC65"}
    allowed_value: {label: "Children per household" value: "CPH"}
    allowed_value: {label: "Disposable Income spent on Energy" value: "EPCT"}
    allowed_value: {label: "Percentage of households with poor efficiency rating" value: "POOREPC"}
  }

  parameter: y_axis_param {
    type:  unquoted
    description: "Dependent Variable used in correlations"
    allowed_value: {label: "Percentage of households in fuel poverty" value: "PCTFPOV"}
    allowed_value: {label: "Average Annual Energy Bill" value: "AVGBILL"}
    allowed_value: {label: "Percentage of households with poor efficiency rating" value: "POOREPC"}
  }

  measure: x_axis_value {
    label_from_parameter: x_axis_param
    type: number
    description: "To be used with scatter chart"
    sql: {% if x_axis_param._parameter_value == "AHCI" %}
            ${net_annual_income_after_housing_costs}
           {% elsif x_axis_param._parameter_value == "HSZE" %}
            ${all_ages}/${number_of_households}
           {% elsif x_axis_param._parameter_value == "PC65" %}
            ${age_65_above}/${all_ages}
           {% elsif x_axis_param._parameter_value == "CPH" %}
            ${age_16_64}/${number_of_households}
           {% elsif x_axis_param._parameter_value == "EPCT" %}
            ${avg_annual_bill_energy}/${net_annual_income_after_housing_costs}
            {% elsif x_axis_param._parameter_value == "POOREPC" %}
            ${pct_poor_epc_rating}
            {% else %}
            ${pct_households_fuel_poverty}
            {% endif %};;
    html: {{msoa11_nm._rendered_value }};;

  }

  measure: y_axis_value {
    label_from_parameter: y_axis_param
    type: number
    description: "To be used with scatter chart"
    sql: {% if x_axis_param._parameter_value == "PCTFPOV" %}
            ${pct_households_fuel_poverty}
           {% elsif x_axis_param._parameter_value == "AVGBILL" %}
            ${avg_annual_bill_energy}
            {% elsif x_axis_param._parameter_value == "POOREPC" %}
            ${pct_poor_epc_rating}
            {% else %}
            ${pct_households_fuel_poverty}
            {% endif %};;
  }

  measure: age_0_15 {
    type: sum
    sql: ${TABLE}.AGE_0_15 ;;
  }

  measure: age_16_64 {
    type: sum
    sql: ${TABLE}.AGE_16_64 ;;
  }

  measure: age_65_above {
    type: sum
    sql: ${TABLE}.AGE_65_ABOVE ;;

  }

  measure: pct_pop_16_65 {
    type: number
    sql: ${age_16_64}/${all_ages} ;;
    html: {{msoa11_nm._rendered_value }};;
  }

  measure: ldn_avg_energy_bill_std_from_mean {
    type: number
    sql: ((${avg_annual_bill_energy}-2568.82)/441.026) ;;
    html: {{msoa11_nm._rendered_value }};;

  }

  measure: ldn_avg_income_after_housing_std_from_mean {
    type: number
    sql: ((${net_annual_income_after_housing_costs}-31751.34)/6073.59) ;;
    # html: {{ladnm._rendered_value }};;
    value_format: "0.##"
  }

  measure: ldn_avg_income_after_energy_housing_std_from_mean {
    type: number
    sql: ((${income_after_housing_energy}-29181.522)/5937.99) ;;
    value_format: "0.##"
  }

  measure: all_ages {
    type: sum
    sql: ${TABLE}.ALL_AGES ;;
  }

  measure: avg_annual_bill_elec {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ELEC ;;
    value_format: "[$£-en-GB]#,##0"

  }

  measure: avg_annual_bill_energy {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ENERGY ;;
    value_format: "[$£-en-GB]#,##0"


  }

  measure: avg_annual_bill_gas {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_GAS ;;
    value_format: "[$£-en-GB]#,##0"

  }

  measure: households_in_poverty {
    type: sum
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;

  }

  measure: income_after_housing_energy {
    type: average
    sql: ${TABLE}.INCOME_AFTER_HOUSING_ENERGY ;;
    value_format: "[$£-en-GB]#,##0"
  }

  measure: net_annual_income_after_housing_costs {
    type: average
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
    value_format: "[$£-en-GB]#,##0"

  }

  measure: number_of_households {
    type: sum
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  measure: rating_agg_all {
    type: sum
    sql: ${TABLE}.RATING_AGG_ALL ;;
  }

  measure: rating_agg_good {
    type: sum
    sql: ${TABLE}.RATING_AGG_GOOD ;;
  }

  measure: rating_agg_poor {
    type: sum
    sql: ${TABLE}.RATING_AGG_POOR ;;
  }

  measure: pct_poor_epc_rating {
    type: number
    sql: ${rating_agg_poor}/${rating_agg_all} ;;
    html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: pct_households_fuel_poverty {
    type: number
    sql: ${households_in_poverty}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  dimension: rgn11_cd {
    type: string
    sql: ${TABLE}.RGN11CD ;;
  }

  dimension: rgn11_nm {
    type: string
    sql: ${TABLE}.RGN11NM ;;
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


  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
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

  dimension: msoa_geo_polygon {
    type: string
    sql: ${TABLE}.MSOA_geo_polygon ;;
  }

  dimension: nat22cd {
    type: string
    sql: ${TABLE}.nat22cd ;;
  }

  dimension: nat22nm {
    type: string
    sql: ${TABLE}.nat22nm ;;
  }


}
