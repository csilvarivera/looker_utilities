# The name of this view in Looker is "A100 Epc Certificates"
view: a100_epc_certificates {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a100_epc_certificates`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.ADDRESS1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.ADDRESS2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.ADDRESS3 ;;
  }

  dimension: building_reference_number {
    type: number
    sql: ${TABLE}.BUILDING_REFERENCE_NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_building_reference_number {
    type: sum
    sql: ${building_reference_number} ;;
  }

  measure: average_building_reference_number {
    type: average
    sql: ${building_reference_number} ;;
  }

  dimension: built_form {
    type: string
    sql: ${TABLE}.BUILT_FORM ;;
  }

  dimension: co2_emiss_curr_per_floor_area {
    type: number
    sql: ${TABLE}.CO2_EMISS_CURR_PER_FLOOR_AREA ;;
  }

  dimension: co2_emissions_current {
    type: number
    sql: ${TABLE}.CO2_EMISSIONS_CURRENT ;;
  }

  dimension: co2_emissions_potential {
    type: number
    sql: ${TABLE}.CO2_EMISSIONS_POTENTIAL ;;
  }

  dimension: constituency {
    type: string
    sql: ${TABLE}.CONSTITUENCY ;;
  }

  dimension: constituency_label {
    type: string
    sql: ${TABLE}.CONSTITUENCY_LABEL ;;
  }

  dimension: construction_age_band {
    type: string
    sql: ${TABLE}.CONSTRUCTION_AGE_BAND ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: current_energy_efficiency {
    type: number
    sql: ${TABLE}.CURRENT_ENERGY_EFFICIENCY ;;
  }

  dimension: current_energy_rating {
    type: string
    sql: ${TABLE}.CURRENT_ENERGY_RATING ;;
  }

  dimension: energy_consumption_current {
    type: number
    sql: ${TABLE}.ENERGY_CONSUMPTION_CURRENT ;;
  }

  dimension: energy_consumption_potential {
    type: number
    sql: ${TABLE}.ENERGY_CONSUMPTION_POTENTIAL ;;
  }

  dimension: energy_tariff {
    type: string
    sql: ${TABLE}.ENERGY_TARIFF ;;
  }

  dimension: environment_impact_current {
    type: number
    sql: ${TABLE}.ENVIRONMENT_IMPACT_CURRENT ;;
  }

  dimension: environment_impact_potential {
    type: number
    sql: ${TABLE}.ENVIRONMENT_IMPACT_POTENTIAL ;;
  }

  dimension: extension_count {
    type: number
    sql: ${TABLE}.EXTENSION_COUNT ;;
  }

  dimension: fixed_lighting_outlets_count {
    type: string
    sql: ${TABLE}.FIXED_LIGHTING_OUTLETS_COUNT ;;
  }

  dimension: flat_storey_count {
    type: string
    sql: ${TABLE}.FLAT_STOREY_COUNT ;;
  }

  dimension: flat_top_storey {
    type: string
    sql: ${TABLE}.FLAT_TOP_STOREY ;;
  }

  dimension: floor_description {
    type: string
    sql: ${TABLE}.FLOOR_DESCRIPTION ;;
  }

  dimension: floor_energy_eff {
    type: string
    sql: ${TABLE}.FLOOR_ENERGY_EFF ;;
  }

  dimension: floor_env_eff {
    type: string
    sql: ${TABLE}.FLOOR_ENV_EFF ;;
  }

  dimension: floor_height {
    type: string
    sql: ${TABLE}.FLOOR_HEIGHT ;;
  }

  dimension: floor_level {
    type: string
    sql: ${TABLE}.FLOOR_LEVEL ;;
  }

  dimension: glazed_area {
    type: string
    sql: ${TABLE}.GLAZED_AREA ;;
  }

  dimension: glazed_type {
    type: string
    sql: ${TABLE}.GLAZED_TYPE ;;
  }

  dimension: heat_loss_corridor {
    type: string
    sql: ${TABLE}.HEAT_LOSS_CORRIDOR ;;
  }

  dimension: heating_cost_current {
    type: number
    sql: ${TABLE}.HEATING_COST_CURRENT ;;
  }

  dimension: heating_cost_potential {
    type: number
    sql: ${TABLE}.HEATING_COST_POTENTIAL ;;
  }

  dimension: hot_water_cost_current {
    type: number
    sql: ${TABLE}.HOT_WATER_COST_CURRENT ;;
  }

  dimension: hot_water_cost_potential {
    type: number
    sql: ${TABLE}.HOT_WATER_COST_POTENTIAL ;;
  }

  dimension: hot_water_energy_eff {
    type: string
    sql: ${TABLE}.HOT_WATER_ENERGY_EFF ;;
  }

  dimension: hot_water_env_eff {
    type: string
    sql: ${TABLE}.HOT_WATER_ENV_EFF ;;
  }

  dimension: hotwater_description {
    type: string
    sql: ${TABLE}.HOTWATER_DESCRIPTION ;;
  }

  dimension: inspection_date {
    type: string
    sql: ${TABLE}.INSPECTION_DATE ;;
  }

  dimension: lighting_cost_current {
    type: number
    sql: ${TABLE}.LIGHTING_COST_CURRENT ;;
  }

  dimension: lighting_cost_potential {
    type: number
    sql: ${TABLE}.LIGHTING_COST_POTENTIAL ;;
  }

  dimension: lighting_description {
    type: string
    sql: ${TABLE}.LIGHTING_DESCRIPTION ;;
  }

  dimension: lighting_energy_eff {
    type: string
    sql: ${TABLE}.LIGHTING_ENERGY_EFF ;;
  }

  dimension: lighting_env_eff {
    type: string
    sql: ${TABLE}.LIGHTING_ENV_EFF ;;
  }

  dimension: lmk_key {
    type: string
    sql: ${TABLE}.LMK_KEY ;;
  }

  dimension: local_authority {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY ;;
  }

  dimension: local_authority_label {
    type: string
    sql: ${TABLE}.LOCAL_AUTHORITY_LABEL ;;
  }

  dimension: lodgement_date {
    type: string
    sql: ${TABLE}.LODGEMENT_DATE ;;
  }

  dimension: lodgement_datetime {
    type: string
    sql: ${TABLE}.LODGEMENT_DATETIME ;;
  }

  dimension: low_energy_fixed_light_count {
    type: string
    sql: ${TABLE}.LOW_ENERGY_FIXED_LIGHT_COUNT ;;
  }

  dimension: low_energy_lighting {
    type: number
    sql: ${TABLE}.LOW_ENERGY_LIGHTING ;;
  }

  dimension: main_fuel {
    type: string
    sql: ${TABLE}.MAIN_FUEL ;;
  }

  dimension: main_heating_controls {
    type: string
    sql: ${TABLE}.MAIN_HEATING_CONTROLS ;;
  }

  dimension: mainheat_description {
    type: string
    sql: ${TABLE}.MAINHEAT_DESCRIPTION ;;
  }

  dimension: mainheat_energy_eff {
    type: string
    sql: ${TABLE}.MAINHEAT_ENERGY_EFF ;;
  }

  dimension: mainheat_env_eff {
    type: string
    sql: ${TABLE}.MAINHEAT_ENV_EFF ;;
  }

  dimension: mainheatc_energy_eff {
    type: string
    sql: ${TABLE}.MAINHEATC_ENERGY_EFF ;;
  }

  dimension: mainheatc_env_eff {
    type: string
    sql: ${TABLE}.MAINHEATC_ENV_EFF ;;
  }

  dimension: mainheatcont_description {
    type: string
    sql: ${TABLE}.MAINHEATCONT_DESCRIPTION ;;
  }

  dimension: mains_gas_flag {
    type: string
    sql: ${TABLE}.MAINS_GAS_FLAG ;;
  }

  dimension: mechanical_ventilation {
    type: string
    sql: ${TABLE}.MECHANICAL_VENTILATION ;;
  }

  dimension: multi_glaze_proportion {
    type: number
    sql: ${TABLE}.MULTI_GLAZE_PROPORTION ;;
  }

  dimension: number_habitable_rooms {
    type: number
    sql: ${TABLE}.NUMBER_HABITABLE_ROOMS ;;
  }

  dimension: number_heated_rooms {
    type: number
    sql: ${TABLE}.NUMBER_HEATED_ROOMS ;;
  }

  dimension: number_open_fireplaces {
    type: number
    sql: ${TABLE}.NUMBER_OPEN_FIREPLACES ;;
  }

  dimension: photo_supply {
    type: number
    sql: ${TABLE}.PHOTO_SUPPLY ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.POSTCODE ;;
  }

  dimension: posttown {
    type: string
    sql: ${TABLE}.POSTTOWN ;;
  }

  dimension: potential_energy_efficiency {
    type: number
    sql: ${TABLE}.POTENTIAL_ENERGY_EFFICIENCY ;;
  }

  dimension: potential_energy_rating {
    type: string
    sql: ${TABLE}.POTENTIAL_ENERGY_RATING ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.PROPERTY_TYPE ;;
  }

  dimension: roof_description {
    type: string
    sql: ${TABLE}.ROOF_DESCRIPTION ;;
  }

  dimension: roof_energy_eff {
    type: string
    sql: ${TABLE}.ROOF_ENERGY_EFF ;;
  }

  dimension: roof_env_eff {
    type: string
    sql: ${TABLE}.ROOF_ENV_EFF ;;
  }

  dimension: secondheat_description {
    type: string
    sql: ${TABLE}.SECONDHEAT_DESCRIPTION ;;
  }

  dimension: sheating_energy_eff {
    type: string
    sql: ${TABLE}.SHEATING_ENERGY_EFF ;;
  }

  dimension: sheating_env_eff {
    type: string
    sql: ${TABLE}.SHEATING_ENV_EFF ;;
  }

  dimension: solar_water_heating_flag {
    type: string
    sql: ${TABLE}.SOLAR_WATER_HEATING_FLAG ;;
  }

  dimension: tenure {
    type: string
    sql: ${TABLE}.TENURE ;;
  }

  dimension: total_floor_area {
    type: number
    sql: ${TABLE}.TOTAL_FLOOR_AREA ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE ;;
  }

  dimension: unheated_corridor_length {
    type: string
    sql: ${TABLE}.UNHEATED_CORRIDOR_LENGTH ;;
  }

  dimension: uprn {
    type: number
    sql: ${TABLE}.UPRN ;;
  }

  dimension: uprn_source {
    type: string
    sql: ${TABLE}.UPRN_SOURCE ;;
  }

  dimension: walls_description {
    type: string
    sql: ${TABLE}.WALLS_DESCRIPTION ;;
  }

  dimension: walls_energy_eff {
    type: string
    sql: ${TABLE}.WALLS_ENERGY_EFF ;;
  }

  dimension: walls_env_eff {
    type: string
    sql: ${TABLE}.WALLS_ENV_EFF ;;
  }

  dimension: wind_turbine_count {
    type: number
    sql: ${TABLE}.WIND_TURBINE_COUNT ;;
  }

  dimension: windows_description {
    type: string
    sql: ${TABLE}.WINDOWS_DESCRIPTION ;;
  }

  dimension: windows_energy_eff {
    type: string
    sql: ${TABLE}.WINDOWS_ENERGY_EFF ;;
  }

  dimension: windows_env_eff {
    type: string
    sql: ${TABLE}.WINDOWS_ENV_EFF ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
