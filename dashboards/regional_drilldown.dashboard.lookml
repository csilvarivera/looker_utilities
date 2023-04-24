- dashboard: regional_drilldown
  title: Regional Drilldown
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Rm98crMTpjZaCqVF6wRFsG
  elements:
  - title: Population Level
    name: Population Level
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_column
    fields: [a300_energy_bill_forecast_msoa_geo_v2.age_0_15, a300_energy_bill_forecast_msoa_geo_v2.age_16_64,
      a300_energy_bill_forecast_msoa_geo_v2.age_65_above, a300_energy_bill_forecast_msoa_geo_v2.year]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "(2013, 2021)"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Population, orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.age_0_15,
            id: a300_energy_bill_forecast_msoa_geo_v2.age_0_15, name: Age 0 15}, {
            axisId: a300_energy_bill_forecast_msoa_geo_v2.age_16_64, id: a300_energy_bill_forecast_msoa_geo_v2.age_16_64,
            name: Age 16 64}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.age_65_above,
            id: a300_energy_bill_forecast_msoa_geo_v2.age_65_above, name: Age 65 Above}],
        showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Year
    series_types: {}
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: |-
      Actual Population data per MSOA
      Latest Data 2020
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 28
    col: 8
    width: 8
    height: 8
  - name: Regional Analysis
    type: text
    title_text: Regional Analysis
    subtitle_text: ''
    body_text: "This dashboard page allows the user to investigate at a particular\
      \ region. You can explore the evolution and forecast of various socioeconomic\
      \ factors of that region. \n\n---\n\nAll data in these charts were sourced from\
      \ publicly available sources. Each chart has a note explaining the sources and\
      \ methodology. Below is an exhaustive list of sources.  \n\n___\n\n| Data  \
      \      | Frequency  | Latest Release  | Latest Data Point  |\n| -------------\
      \ |  ------------- |  ------------- |  ------------- |\n|  [Fuel Poverty](https://www.gov.uk/government/collections/fuel-poverty-sub-regional-statistics#2020-statistics)\
      \  &nbsp;&nbsp;  | Annual | 2022   | 2020   |\n|  [MSOA Income](https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/earningsandworkinghours/datasets/smallareaincomeestimatesformiddlelayersuperoutputareasenglandandwales)\
      \   | Every 2 Years | 2020   | 2018   |\n|  [LSOA Population](https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/middlesuperoutputareamidyearpopulationestimates)\
      \   | Annual | 2021   | 2020   |\n|  [LSOA Energy Consumption](https://www.gov.uk/government/statistics/lower-and-middle-super-output-areas-gas-consumption)\
      \   | Annual | 2022   | 2020   |\n|  [Regional Energy Prices](https://www.gov.uk/government/statistical-data-sets/annual-domestic-energy-price-statistics)\
      \   | Annual | 2022   | 2021   |\n|  [Energy Efficiency Ratings](https://epc.opendatacommunities.org/)\
      \   | Live Updating | 2022   | 2022   |\n\n---\n\nPredicted energy prices for\
      \ 4Q22 and 2023 were based on [expectations](https://www.nimblefins.co.uk/average-cost-electricity-kwh-uk)\
      \ of governments new price guarantee scheme. \n* 2023 variable cost: 36p/kWh\
      \ for Electricity and 9p/kWh for Gas\n"
    row: 1
    col: 0
    width: 24
    height: 7
  - title: Average Household Energy Bills
    name: Average Household Energy Bills
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_column
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy, a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2014, 2023]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: line
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: "Energy Bill = kWh consumed * variable cost per kWh  \nAssuming Energy\
      \ Consumption flat from 2020-2023\nAverage Variable cost in 2021: 0.19£/kWh\
      \ Electricity, 0.0342£/kWh Gas\nAssumed Variable cost in 2022: 0.3225£/kWh Electricity,\
      \ 0.081£/kWh Gas\nAssumed Variable cost in 2023: 0.36£/kWh Electricity, 0.09£\
      /kWh Gas"
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 20
    col: 0
    width: 8
    height: 8
  - title: Percentage Fuel Poor
    name: Percentage Fuel Poor
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_column
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2014, 2020]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    y_axes: [{label: "% Fuel Poor", orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty,
            id: a300_energy_bill_forecast_msoa_geo_v2.pct_households_fuel_poverty,
            name: Pct Households Fuel Poverty}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Year
    series_types: {}
    x_axis_datetime_label: ''
    trend_lines: []
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: |-
      Actual Government Assessment at LSOA Level
      Latest Data 2020
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 20
    col: 16
    width: 8
    height: 8
  - title: Population Percentage
    name: Population Percentage
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_bar
    fields: [a300_energy_bill_forecast_msoa_geo_v2.age_0_15, a300_energy_bill_forecast_msoa_geo_v2.age_16_64,
      a300_energy_bill_forecast_msoa_geo_v2.age_65_above, a300_energy_bill_forecast_msoa_geo_v2.year]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2014, 2020]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Population %, orientation: bottom, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.age_0_15,
            id: a300_energy_bill_forecast_msoa_geo_v2.age_0_15, name: Age 0 15}, {
            axisId: a300_energy_bill_forecast_msoa_geo_v2.age_16_64, id: a300_energy_bill_forecast_msoa_geo_v2.age_16_64,
            name: Age 16 64}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.age_65_above,
            id: a300_energy_bill_forecast_msoa_geo_v2.age_65_above, name: Age 65 Above}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Year
    series_types: {}
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: Latest data 2020
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 28
    col: 16
    width: 8
    height: 8
  - title: Income Spent on Energy
    name: Income Spent on Energy
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_column
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.pct_after_housing_income_on_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2014, 2023]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: line
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: Income data from 2018
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 20
    col: 8
    width: 8
    height: 8
  - title: People in Fuel Poverty
    name: People in Fuel Poverty
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.people_in_fuel_poverty]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
    limit: 5000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: Based on 2020 Government assessment
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 12
    width: 4
    height: 2
  - title: Energy Bill '22 vs '21
    name: Energy Bill '22 vs '21
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2021, 2022]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{args: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy],
        calculation_type: percent_of_previous, category: table_calculation, based_on: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        label: Percent of previous - A300 Energy Bill Forecast Msoa Geo V2 Wavg Households
          Bill Energy, source_field: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        table_calculation: percent_of_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_households_bill_energy,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy]
    note_state: collapsed
    note_display: above
    note_text: |-
      Assuming Energy Consumption flat from 2020-2023
      Average Variable cost in 2021: 0.19£/kWh Electricity, 0.0342£/kWh Gas
      Assumed Variable cost in 2022: 0.3225£/kWh Electricity, 0.081£/kWh Gas
      Assumed Variable cost in 2023: 0.36£/kWh Electricity, 0.09£/kWh Gas
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 16
    width: 4
    height: 2
  - title: Energy Bill '23 vs '21
    name: Energy Bill '23 vs '21
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2021,2023'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{args: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy],
        calculation_type: percent_of_previous, category: table_calculation, based_on: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        label: Percent of previous - A300 Energy Bill Forecast Msoa Geo V2 Wavg Households
          Bill Energy, source_field: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        table_calculation: percent_of_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_households_bill_energy,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy]
    note_state: collapsed
    note_display: above
    note_text: |-
      Assuming Energy Consumption flat from 2020-2023
      Average Variable cost in 2021: 0.19£/kWh Electricity, 0.0342£/kWh Gas
      Assumed Variable cost in 2022: 0.3225£/kWh Electricity, 0.081£/kWh Gas
      Assumed Variable cost in 2023: 0.36£/kWh Electricity, 0.09£/kWh Gas
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 20
    width: 4
    height: 2
  - title: Household Income After Housing & Energy
    name: Household Income After Housing & Energy
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_column
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: "[2014, 2023]"
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "(${a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy}\
          \ / offset(${a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy},\
          \ -1) -1)", label: Percent change from previous - A300 Energy Bill Forecast
          Msoa Geo V2 Wavg Income After Housing and Energy, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: percent_change_from_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_income_after_housing_and_energy,
        _type_hint: number}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy,
            name: Income after housing and energy costs}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: right,
        series: [{axisId: percent_change_from_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_income_after_housing_and_energy,
            id: percent_change_from_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_income_after_housing_and_energy,
            name: YoY % Change in Income after Housing/Energy Costs}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: line
      percent_change_from_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_income_after_housing_and_energy: line
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      percent_change_from_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_income_after_housing_and_energy: YoY
        % Change in Income after Housing/Energy Costs
      a300_energy_bill_forecast_msoa_geo_v2.wavg_income_after_housing_and_energy: Income
        after housing and energy costs
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: |-
      Assuming Income after housing flat at 2018 levels till 2023
      Assuming Energy costs calculated above
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 28
    col: 0
    width: 8
    height: 8
  - title: Population
    name: Population
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.all_ages]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.year]
    limit: 5000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: 2020 Data
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 4
    width: 4
    height: 2
  - title: Average Household Size
    name: Average Household Size
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_household_size]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.wavg_household_size desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{args: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy],
        calculation_type: percent_of_previous, category: table_calculation, based_on: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        label: Percent of previous - A300 Energy Bill Forecast Msoa Geo V2 Wavg Households
          Bill Energy, source_field: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        table_calculation: percent_of_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_households_bill_energy,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: 2020 Data
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 0
    width: 4
    height: 2
  - title: Children Per Household
    name: Children Per Household
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: single_value
    fields: [a300_energy_bill_forecast_msoa_geo_v2.year, a300_energy_bill_forecast_msoa_geo_v2.wavg_children_per_household]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.wavg_children_per_household desc
        0]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{args: [a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy],
        calculation_type: percent_of_previous, category: table_calculation, based_on: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        label: Percent of previous - A300 Energy Bill Forecast Msoa Geo V2 Wavg Households
          Bill Energy, source_field: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
        table_calculation: percent_of_previous_a300_energy_bill_forecast_msoa_geo_v2_wavg_households_bill_energy,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec, name: Wavg
              Households Bill Elec}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas, name: Wavg
              Households Bill Gas}, {axisId: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            id: a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy,
            name: Wavg Households Bill Energy}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Year
    series_types: {}
    series_colors: {}
    series_labels:
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_energy: Energy
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_elec: Electricity
      a300_energy_bill_forecast_msoa_geo_v2.wavg_households_bill_gas: Gas
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy: "% Net Income\
        \ on Energy"
      a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_housing: "% Net Income\
        \ on Housing"
    x_axis_datetime_label: ''
    trend_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    note_state: collapsed
    note_display: above
    note_text: 2020 Data
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 8
    col: 8
    width: 4
    height: 2
  - title: Percent Income Spent on Energy (2020)
    name: Percent Income Spent on Energy (2020)
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_map
    fields: [a300_energy_bill_forecast_msoa_geo_v2.msoa_latlong, a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2020'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy desc 0]
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
    map_value_scale_clamp_min: 0.03
    map_value_scale_clamp_max: 0.07
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: |-
      Income after housing data from 2018
      Energy Consumption and Variable cost from 2020
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 10
    col: 0
    width: 12
    height: 10
  - title: Percent Income Spent on Energy (2023)
    name: Percent Income Spent on Energy (2023)
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_map
    fields: [a300_energy_bill_forecast_msoa_geo_v2.msoa_latlong, a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy]
    filters:
      a300_energy_bill_forecast_msoa_geo_v2.year: '2023'
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.pct_net_income_on_energy desc 0]
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
    map_value_scale_clamp_min: 0.03
    map_value_scale_clamp_max: 0.09
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: |-
      Income after housing data from 2018
      Energy Consumption flat at 2020 levels
      Assumed Variable cost in 2023: 0.36£/kWh Electricity, 0.09£/kWh Gas
    listen:
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
    row: 10
    col: 12
    width: 12
    height: 10
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
    required: true
    ui_config:
      type: checkboxes
      display: popover
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: []
    field: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
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
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: [Rgn11 Nm, Region]
    field: a300_energy_bill_forecast_msoa_geo_v2.ladnm
  - name: MSOA
    title: MSOA
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: [Local Authority]
    field: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
