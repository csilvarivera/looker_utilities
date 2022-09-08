# Define the database connection to be used for this model.
connection: "lookerdata"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: utilities_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: utilities_looker_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Utilities Looker"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: a200_msoa_fuel_poverty_2022{
  join:  a100_net_income_ahc_2018{
    type: inner
    relationship: one_to_one
    sql_on: ${a200_msoa_fuel_poverty_2022.msoa11_cd} = ${a100_net_income_ahc_2018.msoa_code} ;;
  }

  join:  a200_gas_elec_cons_msoa{
    type: inner
    relationship: one_to_many
    sql_on: ${a200_msoa_fuel_poverty_2022.msoa11_cd} = ${a200_gas_elec_cons_msoa.msoa11_cd};;
  }

  join:  a200_msoa_pop_2020{
    type: inner
    relationship: one_to_one
    sql_on: ${a200_msoa_fuel_poverty_2022.msoa11_cd} = ${a200_msoa_pop_2020.msoa11_cd};;
  }

  join:  a200_ecp_certificates_msoa_agg{
    type: inner
    relationship: one_to_one
    sql_on: ${a200_msoa_fuel_poverty_2022.msoa11_cd} = ${a200_ecp_certificates_msoa_agg.msoa11_cd};;
  }
}

explore: derived_msoa_fuel_poverty {}

explore: a200_energy_bill_forecast_msoa {}

explore: a200_energy_bill_forecast_rgn {}

# explore: a100_pcd_lsoa_map {}

# explore: fuel_poverty_household_count{}
