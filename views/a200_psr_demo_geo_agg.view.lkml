# The name of this view in Looker is "A200 Psr Demo Geo Agg"
view: a200_psr_demo_geo_agg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_psr_demo_geo_agg`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age 0 15" in Explore.

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
    html:
    <ul>
      <li> Local Authority: {{ ladnm._rendered_value }} </li>
      <li> MSOA: {{ msoa11_nm._rendered_value }} </li>
    </ul>;;
  }

  dimension: msoa_latlong_oneline{
    type: location
    sql_latitude: ${msoa_geo_centroid_lat};;
    sql_longitude: ${msoa_geo_centroid_lon};;
    html: {{ msoa11_nm._rendered_value }};;
  }

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

  dimension: age_related {
    type: yesno
    sql: ${TABLE}.AGE_RELATED ;;
  }

  measure: all_ages {
    type: average
    sql: ${TABLE}.ALL_AGES ;;
  }

  measure: avg_annual_bill_elec {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ELEC ;;
  }

  measure: avg_annual_bill_energy {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ENERGY ;;
    value_format: "\"£\"#,##0"
  }

  measure: avg_annual_bill_gas {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_GAS ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: communication_need {
    type: yesno
    sql: ${TABLE}.COMMUNICATION_NEED ;;
  }

  dimension: date_inserted {
    type: number
    sql: ${TABLE}.DATE_INSERTED ;;
  }

  dimension: date_updated {
    type: number
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  measure: energy_bill_pct_net_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_NET_ANNUAL_INCOME ;;
  }

  measure: energy_bill_pct_total_annual_income {
    type: number
    sql: ${TABLE}.ENERGY_BILL_PCT_TOTAL_ANNUAL_INCOME ;;
  }

  dimension: financial_difficulty {
    type: yesno
    sql: ${TABLE}.FINANCIAL_DIFFICULTY ;;
  }

  dimension: health_condition {
    type: yesno
    sql: ${TABLE}.HEALTH_CONDITION ;;
  }

  measure: households_in_poverty {
    type: average
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
    type: max
    sql: ${TABLE}.INCOME_AFTER_HOUSING_ENERGY ;;
    value_format: "\"£\"#,##0"

  }

  dimension: index {
    type: number
    sql: ${TABLE}.INDEX ;;
  }

  dimension: ladcd {
    type: string
    sql: ${TABLE}.LADCD ;;
  }

  dimension: ladnm {
    type: string
    sql: ${TABLE}.LADNM ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.LON ;;
  }

  dimension: medical_electricity_dependent {
    type: yesno
    sql: ${TABLE}.MEDICAL_ELECTRICITY_DEPENDENT ;;
  }

  dimension: medical_water_dependent {
    type: yesno
    sql: ${TABLE}.MEDICAL_WATER_DEPENDENT ;;
  }

  dimension: mobility_related {
    type: yesno
    sql: ${TABLE}.MOBILITY_RELATED ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
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
    type: max
    sql: ${TABLE}.NUMBER_OF_HOUSEHOLDS ;;
  }

  dimension: oa11_cd {
    type: string
    sql: ${TABLE}.OA11CD ;;
  }

  dimension: pcds {
    type: string
    sql: ${TABLE}.PCDS ;;
  }

  measure: uprn_count {
    type: count_distinct
    sql: ${TABLE}.uprn ;;
    html:  Number of households in PSR: {{uprn_count._rendered_value }};;
  }

  measure: uprn_count_justnum {
    type: count_distinct
    sql: ${TABLE}.uprn ;;
  }

  measure: pct_households_psr {
    type: number
    sql: ${uprn_count}/${number_of_households} ;;
    value_format: "0.00%"
    html:  Percentage of household in PSR: {{pct_households_psr._rendered_value }};;
  }

  measure: pct_households_psr_justpct {
    type: number
    sql: ${uprn_count}/${number_of_households} ;;
    value_format: "0.00%"
  }

  measure: pop_annual_bill_elec {
    type: sum
    sql: ${TABLE}.POP_ANNUAL_BILL_ELEC ;;
  }

  measure: pop_annual_bill_energy {
    type: sum
    sql: ${TABLE}.POP_ANNUAL_BILL_ENERGY ;;
  }

  measure: pop_annual_bill_gas {
    type: sum
    sql: ${TABLE}.POP_ANNUAL_BILL_GAS ;;
  }

  measure: pop_housing_cost {
    type: sum
    sql: ${TABLE}.POP_HOUSING_COST ;;
  }

  measure: pop_income_after_housing_energy {
    type: sum
    sql: ${TABLE}.POP_INCOME_AFTER_HOUSING_ENERGY ;;
  }

  measure: pop_net_annual_income {
    type: sum
    sql: ${TABLE}.POP_NET_ANNUAL_INCOME ;;
  }

  measure: pop_net_annual_income_after_housing_costs {
    type: sum
    sql: ${TABLE}.POP_NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  measure: pop_net_income_before_housing_costs {
    type: sum
    sql: ${TABLE}.POP_NET_INCOME_BEFORE_HOUSING_COSTS ;;
  }

  measure: pop_total_annual_income {
    type: sum
    sql: ${TABLE}.POP_TOTAL_ANNUAL_INCOME ;;
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

  dimension: result {
    type: string
    sql: ${TABLE}.RESULT ;;
  }

  dimension: rgn11_cd {
    type: string
    sql: ${TABLE}.RGN11CD ;;
  }

  dimension: rgn11_nm {
    type: string
    sql: ${TABLE}.RGN11NM ;;
  }

  dimension: safety_related {
    type: yesno
    sql: ${TABLE}.SAFETY_RELATED ;;
  }

  dimension: temporary_registration {
    type: yesno
    sql: ${TABLE}.TEMPORARY_REGISTRATION ;;
  }

  measure: total_annual_income {
    type: sum
    sql: ${TABLE}.TOTAL_ANNUAL_INCOME ;;
  }

  dimension: uprn {
    type: string
    sql: ${TABLE}.UPRN ;;
    value_format: "0"
  }

  measure: vulnerability_details {
    type: string
    sql: max(${TABLE}.VULNERABILITY_DETAILS) ;;
    html:
    <ul>
      <li> Priority Category: {{ vulnerable_category._rendered_value }} </li>
      <li> Priority Detail: {{ vulnerability_details._rendered_value }} </li>
    </ul>
    ;;
  }

  measure: vulnerability_details_nolist {
    type: string
    sql: max(${TABLE}.VULNERABILITY_DETAILS) ;;
  }

  dimension: vulnerability_details_nolist_dimension {
    type: string
    sql: ${TABLE}.VULNERABILITY_DETAILS ;;

  }

  measure: vulnerable_category {
    type: string
    sql: max(${TABLE}.VULNERABLE_CATEGORY)  ;;
  }

  dimension: vulnerable_category_dimension {
    type: string
    sql: ${TABLE}.VULNERABLE_CATEGORY;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  dimension: address_latlong{
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;
    html:
    <ul>
        <li> UPRN: {{uprn._rendered_value }} </li>
        <li> POSTCODE: {{ pcds._rendered_value }} </li>
      </ul>
    ;;
  }

  dimension: address_latlong_oneline{
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;
    html: {{uprn._rendered_value }} {{ pcds._rendered_value }}
      ;;
  }

  # Calculated Measures

  measure: pct_households_fuel_poverty {
    type: number
    sql: ${households_in_poverty}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: wavg_households_bill_elec {
    type: number
    sql: ${pop_annual_bill_elec}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: wavg_households_bill_gas {
    type: number
    sql: ${pop_annual_bill_gas}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }


  measure: wavg_households_bill_energy{
    type: number
    sql: ${pop_annual_bill_energy}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: wavg_households_net_annual_income {
    type: number
    sql: ${pop_net_annual_income}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: wavg_households_net_annual_income_after_housing{
    type: number
    sql: ${pop_net_annual_income_after_housing_costs}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: wavg_housing_cost{
    type: number
    sql: ${pop_housing_cost}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: pct_net_income_on_energy {
    type: number
    sql: ${pop_annual_bill_energy}/${pop_net_annual_income} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: pct_after_housing_income_on_energy {
    type: number
    sql: ${pop_annual_bill_energy}/${pop_net_annual_income_after_housing_costs} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: pct_net_income_on_housing {
    type: number
    sql: ${pop_housing_cost}/${pop_net_annual_income} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: people_in_fuel_poverty {
    type: number
    sql: ${households_in_poverty} * (${all_ages}/${number_of_households}) ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "#,##0"
  }

  measure: wavg_income_after_housing_and_energy {
    type: number
    sql: (${pop_net_annual_income_after_housing_costs} - (${pop_annual_bill_energy}))/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "\"£\"#,##0"
  }

  measure: wavg_household_size {
    type: number
    sql: ${all_ages}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0.0"
  }

  measure: wavg_children_per_household {
    type: number
    sql: ${age_0_15}/${number_of_households} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0.0"
  }

  measure: wavg_pct_over_65 {
    type: number
    sql: ${age_65_above}/${all_ages} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0%"
  }

  measure: wavg_dependence_ratio {
    type: number
    sql: (${age_0_15}+${age_16_64})/${age_16_64} ;;
    # html: {{msoa11_nm._rendered_value }};;
    value_format: "0.0"
  }
}
