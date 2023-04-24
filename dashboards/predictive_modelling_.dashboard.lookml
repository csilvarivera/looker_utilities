- dashboard: predictive_modelling_
  title: 'Predictive Modelling '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: NYVTk43p103ONhVdAmJGkP
  elements:
  - title: Model Predicted Fuel Poverty Percentage of Households
    name: Model Predicted Fuel Poverty Percentage of Households
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    type: looker_map
    fields: [a400_linmodel_precalc_ahci_fpov_geo.msoa_latlong, a400_linmodel_precalc_ahci_fpov_geo.pred_pct_household_in_poverty]
    sorts: [a400_linmodel_precalc_ahci_fpov_geo.pred_pct_household_in_poverty desc
        0]
    limit: 5000
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_min: 0.05
    map_value_scale_clamp_max: 0.2
    series_types: {}
    defaults_version: 1
    listen:
      Local Authority: a400_linmodel_precalc_ahci_fpov_geo.ladnm
      Income Shock Scenario (% Decline in Income After Housing Cost): a400_linmodel_precalc_ahci_fpov_geo.pct_income_decrease
    row: 8
    col: 12
    width: 12
    height: 10
  - title: 2 Degree Polynomial Fit (Net Income vs Fuel Poverty)
    name: 2 Degree Polynomial Fit (Net Income vs Fuel Poverty)
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_scatter
    fields: [a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm, a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty,
      a300_energy_bill_forecast_msoa_geo_v2.net_annual_income_after_housing_costs]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
      a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm: London
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.net_annual_income_after_housing_costs
        desc 0]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: "% of Households in Fuel Poverty", orientation: left, series: [
          {axisId: a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty,
            id: a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty,
            name: Pct Households Fuel Poverty}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Net Annual Income After Housing Cost (£)
    size_by_field: a300_energy_bill_forecast_msoa_geo_v2.all_ages
    series_types: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty: "% Fuel Poor\
        \ Households"
    trend_lines: [{color: "#000000", label_position: left, order: 2, period: 7, regression_type: polynomial,
        series_index: 1, show_label: true, label_type: r2}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_fields: [a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm]
    note_state: collapsed
    note_display: above
    note_text: |
      X = Average household income in 2018 per MSOA
      Y = Government assessment of fuel poor households in 2020
      R^2 0.53
      % Fuel Poor MSOA = 0.367*(Income MSOA) + 9.911e^-11*(Income MSOA^2)
    listen: {}
    row: 8
    col: 0
    width: 12
    height: 10
  - title: Increase Fuel Poverty By Local Authority (Top 20)
    name: Increase Fuel Poverty By Local Authority (Top 20)
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    type: looker_grid
    fields: [a400_linmodel_precalc_ahci_fpov_geo.ladnm, a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty,
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty]
    sorts: [a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty desc]
    limit: 20
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a400_linmodel_precalc_ahci_fpov_geo.ladnm: Local Authority
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty: Increase
        in Fuel Poor Persons
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty: Increase
        in Fuel Poor Households
    series_cell_visualizations:
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty:
        is_active: true
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty:
        is_active: false
        palette:
          palette_id: create-a-color-collection-diverging-0
          collection_id: create-a-color-collection
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_min: 0.05
    map_value_scale_clamp_max: 0.2
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: |-
      Model estimate of number of people and households entering fuel poverty based on income decline scenario
      Aggregated to Local Authority Level
      Top 20 Regions (Largest increase in fuel poor persons)
    listen:
      Local Authority: a400_linmodel_precalc_ahci_fpov_geo.ladnm
      Income Shock Scenario (% Decline in Income After Housing Cost): a400_linmodel_precalc_ahci_fpov_geo.pct_income_decrease
    row: 18
    col: 0
    width: 12
    height: 10
  - title: Increase Fuel Poverty By MSOA (Top 20)
    name: Increase Fuel Poverty By MSOA (Top 20)
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    type: looker_grid
    fields: [a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty, a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty,
      a400_linmodel_precalc_ahci_fpov_geo.msoa11_nm]
    sorts: [a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty desc]
    limit: 20
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a400_linmodel_precalc_ahci_fpov_geo.ladnm: Local Authority
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty: Increase
        in Fuel Poor Persons
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty: Increase
        in Fuel Poor Households
    series_cell_visualizations:
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_person_in_poverty:
        is_active: true
      a400_linmodel_precalc_ahci_fpov_geo.pred_num_chg_household_in_poverty:
        is_active: false
        palette:
          palette_id: create-a-color-collection-diverging-0
          collection_id: create-a-color-collection
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_min: 0.05
    map_value_scale_clamp_max: 0.2
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: |-
      Model estimate of number of people and households entering fuel poverty based on income decline scenario
      Aggregated to MSOA Level
      Top 20 Regions (Largest increase in fuel poor persons)
    listen:
      Local Authority: a400_linmodel_precalc_ahci_fpov_geo.ladnm
      Income Shock Scenario (% Decline in Income After Housing Cost): a400_linmodel_precalc_ahci_fpov_geo.pct_income_decrease
    row: 18
    col: 12
    width: 12
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 28
    col: 0
    width: 8
    height: 6
  - name: 'Modelling Fuel Poverty Across London based on Income Scenarios '
    type: text
    title_text: 'Modelling Fuel Poverty Across London based on Income Scenarios '
    subtitle_text: ''
    body_text: "This dashboard page illustrates how Looker can be used to visualise\
      \ and interact with the output of a predictive model. This illustration makes\
      \ use of a __simplistic 2 degree polynomial model with one independent variable__.\
      \ \n\n---\n\nThe model illustrates a relationship between [income after housing\
      \ costs](https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/earningsandworkinghours/datasets/smallareaincomeestimatesformiddlelayersuperoutputareasenglandandwales)\
      \ and the [percentage of households in fuel poverty](https://www.gov.uk/government/collections/fuel-poverty-sub-regional-statistics#2020-statistics).\
      \ It was trained using the latest income data from 2018 and the latest fuel\
      \ poverty data from 2020 for all [MSOA](https://www.datadictionary.nhs.uk/nhs_business_definitions/middle_layer_super_output_area.html#:~:text=a%20GEOGRAPHIC%20AREA.-,Middle%20Layer%20Super%20Output%20Areas%20(MSOA)%20are%20a%20geographic%20hierarchy,and%20the%20mean%20is%207200)\
      \ regions in London. The model is limited to London because it was only trained\
      \ on data from London, the same relationship may not hold in other regions.\
      \ \n\n___\n\nThe two variables have a __-70% correlation__ and our model has\
      \ a __0.53 R^2 Score__. This means that around half of the variability in fuel\
      \ poverty percentage is explained by income. Using more complicated models with\
      \ additional variables may help to explain more variability in the future.\n\
      \n***\n\nUsing the filters above, you can apply a percentage shock to the average\
      \ income in each MSOA in London and see the predicted impact on fuel poverty.\
      \ The tables below illustrate the number of new person and households entering\
      \ into fuel poverty for a given income shock. "
    row: 1
    col: 0
    width: 24
    height: 7
  - title: New Tile
    name: New Tile
    model: utilities_looker
    explore: custom_navigation_buttons
    type: single_value
    fields: [custom_navigation_buttons.dash_nav]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: London
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
      options:
      - London
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    listens_to_filters: []
    field: a400_linmodel_precalc_ahci_fpov_geo.rgn11_nm
  - name: Local Authority
    title: Local Authority
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    listens_to_filters: []
    field: a400_linmodel_precalc_ahci_fpov_geo.ladnm
  - name: Income Shock Scenario (% Decline in Income After Housing Cost)
    title: Income Shock Scenario (% Decline in Income After Housing Cost)
    type: field_filter
    default_value: '0'
    allow_multiple_values: true
    required: true
    ui_config:
      type: slider
      display: inline
      options:
        min: 0
        max: 50
    model: utilities_looker
    explore: a400_linmodel_precalc_ahci_fpov_geo
    listens_to_filters: []
    field: a400_linmodel_precalc_ahci_fpov_geo.pct_income_decrease
