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

explore: a200_energy_bill_forecast_msoa {}

explore: a200_energy_bill_forecast_rgn {}

explore: a200_energy_bill_forecast_la {}

explore: a300_energy_bill_forecast_msoa_geo {}

explore: a300_energy_bill_forecast_msoa_geo_v2 {}

explore: a300_linmodel_precalc_ahci_fpov {}

explore: a400_linmodel_precalc_ahci_fpov_geo {}

explore: a200_psr_demo_geo {}

explore: a200_psr_demo_geo_agg {}

explore: custom_navigation_buttons{}


# explore: a100_pcd_lsoa_map {}

# explore: fuel_poverty_household_count{}
