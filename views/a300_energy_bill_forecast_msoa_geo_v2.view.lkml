# The name of this view in Looker is "A300 Energy Bill Forecast Msoa Geo V2"
view: a300_energy_bill_forecast_msoa_geo_v2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a300_energy_bill_forecast_msoa_geo_v2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.


  # Parameters
  parameter: heatmap_select_param {
    type:  unquoted
    description: "Independent Variable used in correlations"
    allowed_value: {label: "Percentage of households in fuel poverty (%)" value: "PCTFPOV"}
    allowed_value: {label: "Net Annual Income After Housing Cost (£)" value: "AHCI"}
    allowed_value: {label: "Average Household Size" value: "HSZE"}
    allowed_value: {label: "Percentage of population over 65 (%)" value: "PC65"}
    allowed_value: {label: "Dependence Ratio (Children + Old Age : Working Age Ratio)" value: "DEPRAT"}
    allowed_value: {label: "Children per household" value: "CPH"}
    allowed_value: {label: "Average Household Annual Energy Bill (£)" value: "EBILL"}
    allowed_value: {label: "Percentage of after housing income spent on energy (%)" value: "EPCT"}
  }


  measure: heatmap_select_value {
    label_from_parameter: heatmap_select_param
    type: number
    description: "To be used with scatter chart"
    sql: {% if heatmap_select_param._parameter_value == "PCTFPOV" %}
              ${pct_households_fuel_poverty}*100
            {% elsif heatmap_select_param._parameter_value == "AHCI" %}
             ${wavg_households_net_annual_income_after_housing}
           {% elsif heatmap_select_param._parameter_value == "HSZE" %}
            ${wavg_household_size}
           {% elsif heatmap_select_param._parameter_value == "PC65" %}
            ${wavg_pct_over_65}*100
           {% elsif heatmap_select_param._parameter_value == "DEPRAT" %}
            ${wavg_dependence_ratio}
             {% elsif heatmap_select_param._parameter_value == "CPH" %}
            ${wavg_children_per_household}
           {% elsif heatmap_select_param._parameter_value == "EPCT" %}
            ${pct_after_housing_income_on_energy}*100
            {% elsif heatmap_select_param._parameter_value == "EBILL" %}
            ${wavg_households_bill_energy}
            {% else %}
             ${households_in_poverty}/${number_of_households}
            {% endif %};;
  }

  # dimensions

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
    value_format:  "####"
  }


  #Measures
  measure: total_annual_income {
    type: sum
    sql: ${TABLE}.TOTAL_ANNUAL_INCOME ;;
  }

  measure: net_annual_income {
    type: sum
    sql: ${TABLE}.NET_ANNUAL_INCOME ;;
  }

  measure: net_annual_income_after_housing_costs {
    type: sum
    sql: ${TABLE}.NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
    html: {{msoa11_nm._rendered_value }};;
  }

  measure: net_income_before_housing_costs {
    type: sum
    sql: ${TABLE}.NET_INCOME_BEFORE_HOUSING_COSTS ;;
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

  measure: income_after_housing_energy {
    type: sum
    sql: ${TABLE}.INCOME_AFTER_HOUSING_ENERGY ;;
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

  measure: all_ages {
    type: sum
    sql: ${TABLE}.ALL_AGES ;;
  }

  measure: avg_annual_bill_elec {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ELEC ;;
  }

  measure: avg_annual_bill_energy {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_ENERGY ;;
  }

  measure: avg_annual_bill_gas {
    type: average
    sql: ${TABLE}.AVG_ANNUAL_BILL_GAS ;;
  }

  measure: energy_bill_pct_net_annual_income {
    type: average
    sql: ${TABLE}.ENERGY_BILL_PCT_NET_ANNUAL_INCOME ;;
  }

  measure: energy_bill_pct_total_annual_income {
    type: average
    sql: ${TABLE}.ENERGY_BILL_PCT_TOTAL_ANNUAL_INCOME ;;
  }

  measure: households_in_poverty {
    type: sum
    sql: ${TABLE}.HOUSEHOLDS_IN_POVERTY ;;
  }

  measure: housing_cost {
    type: sum
    sql: ${TABLE}.HOUSING_COST ;;
  }

  measure: pop_total_annual_income{
    type:  sum
    sql: ${TABLE}.POP_TOTAL_ANNUAL_INCOME ;;
  }

  measure: pop_net_annual_income{
    type:  sum
    sql: ${TABLE}.POP_NET_ANNUAL_INCOME ;;
  }

  measure: pop_net_income_before_housing_cost{
    type:  sum
    sql: ${TABLE}.POP_NET_INCOME_BEFORE_HOUSING_COST ;;
  }

  measure: pop_net_annual_income_after_housing_costs{
    type:  sum
    sql: ${TABLE}.POP_NET_ANNUAL_INCOME_AFTER_HOUSING_COSTS ;;
  }

  measure: pop_housing_cost{
    type:  sum
    sql: ${TABLE}.POP_HOUSING_COST ;;
  }

  measure: pop_annual_bill_elec{
    type:  sum
    sql: ${TABLE}.POP_ANNUAL_BILL_ELEC ;;
  }

  measure: pop_annual_bill_gas{
    type:  sum
    sql: ${TABLE}.POP_ANNUAL_BILL_GAS ;;
  }

  measure: pop_annual_bill_energy{
    type:  sum
    sql: ${TABLE}.POP_ANNUAL_BILL_ENERGY ;;
  }

  measure: pop_income_after_housing_energy{
    type:  sum
    sql: ${TABLE}.POP_INCOME_AFTER_HOUSING_ENERGY ;;
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
