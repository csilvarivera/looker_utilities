- dashboard: interactive_heatmap
  title: Interactive Heatmap
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SZTNeJLTysLHXjKIxR5irT
  elements:
  - title: Heatmap
    name: Heatmap
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    type: looker_map
    fields: [a300_energy_bill_forecast_msoa_geo_v2.msoa_latlong, a300_energy_bill_forecast_msoa_geo_v2.heatmap_select_value]
    sorts: [a300_energy_bill_forecast_msoa_geo_v2.msoa_latlong]
    limit: 5000
    dynamic_fields: [{category: table_calculation, expression: 'round(${a300_energy_bill_forecast_msoa_geo_v2.heatmap_select_value},
          2)', label: Energy Bill Forecast Msoa Geo V2 Heatmap Select Value, value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, table_calculation: energy_bill_forecast_msoa_geo_v2_heatmap_select_value,
        _type_hint: number}]
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
    series_types: {}
    defaults_version: 1
    hidden_fields: [a300_energy_bill_forecast_msoa_geo_v2.heatmap_select_value]
    listen:
      Year: a300_energy_bill_forecast_msoa_geo_v2.year
      Region: a300_energy_bill_forecast_msoa_geo_v2.rgn11_nm
      Local Authority: a300_energy_bill_forecast_msoa_geo_v2.ladnm
      MSOA: a300_energy_bill_forecast_msoa_geo_v2.msoa11_nm
      Variable: a300_energy_bill_forecast_msoa_geo_v2.heatmap_select_param
    row: 1
    col: 10
    width: 13
    height: 16
  - name: Interactive Map Explore
    type: text
    title_text: Interactive Map Explore
    subtitle_text: ''
    body_text: "This dashboard page allows the user visualise all the available data\
      \ in a heatmap form. \n\n---\n\nUsers can filter which regions to visualise\
      \ and choose the variables to display on the heatmap. An explanation of each\
      \ variable is available below.\n\n___\n\n| Variable        | Explanation   \
      \        | Frequency  |\n| ------------- | ------------- | ----- |\n| Percentage\
      \ of households in fuel poverty (%)   | Government assessment of number of households\
      \ in fuel poverty per LSOA    | Annual 2011-2020, 2020 data carried till 2023\
      \ |\n|  Net Annual Income After Housing Cost (£)   | Government survey of income\
      \ per MSOA   | Every 2 years 2012-2018. Data carried forward for missing intermediate\
      \ year. 2018 data carried forward till 2023 |\n| Percentage of population over\
      \ 65 (%)   | Government population breakdown by age per MSOA   | Annual 2011-2020.\
      \ 2020 data carried forward till 2023 |\n| Dependence Ratio (Children + Old\
      \ Age : Working Age Ratio)  | Working age defined as 16-64  | Annual 2011-2020.\
      \ 2020 data carried forward till 2023 |\n| Children per household | Number of\
      \ households from fuel poverty data (latest 2018), population from MSOA population\
      \ data (latest 2020)  | Data carried forward from last available year till 2023\
      \ |\n| Average Household Annual Energy Bill (£) | Energy bill = Energy consumption\
      \ * Energy use. Government data on energy consumption available till 2020 at\
      \ LSOA level. Government data on variable cost available till 2021 at Region\
      \ level.  | Consumption per LSOA carried forward from 2020 till 2023. 2023 variable\
      \ cost: 36p/kWh for Electricity and 9p/kWh for Gas. |\n| Percentage of after\
      \ housing income spent on energy (%)| Energy Bill / Net Annual Income After\
      \ Housing Cost (£)  | Energy Bill methodology above, Income after housing cost\
      \ methodology above |\n\n___\n\n__Data Sources__\n\n| Data        | Frequency\
      \  | Latest Release  | Latest Data Point  |\n| ------------- |  -------------\
      \ |  ------------- |  ------------- |\n|  [Fuel Poverty](https://www.gov.uk/government/collections/fuel-poverty-sub-regional-statistics#2020-statistics)\
      \  &nbsp;&nbsp;  | Annual | 2022   | 2020   |\n|  [MSOA Income](https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/earningsandworkinghours/datasets/smallareaincomeestimatesformiddlelayersuperoutputareasenglandandwales)\
      \   | Every 2 Years | 2020   | 2018   |\n|  [LSOA Population](https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/middlesuperoutputareamidyearpopulationestimates)\
      \   | Annual | 2021   | 2020   |\n|  [LSOA Energy Consumption](https://www.gov.uk/government/statistics/lower-and-middle-super-output-areas-gas-consumption)\
      \   | Annual | 2022   | 2020   |\n|  [Regional Energy Prices](https://www.gov.uk/government/statistical-data-sets/annual-domestic-energy-price-statistics)\
      \   | Annual | 2022   | 2021   |\n"
    row: 1
    col: 0
    width: 10
    height: 16
  - title: Untitled
    name: Untitled
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
      type: tag_list
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
      options: []
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: [Region]
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
  - name: Variable
    title: Variable
    type: field_filter
    default_value: PCTFPOV
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: []
    field: a300_energy_bill_forecast_msoa_geo_v2.heatmap_select_param
  - name: Year
    title: Year
    type: field_filter
    default_value: '2020'
    allow_multiple_values: true
    required: true
    ui_config:
      type: slider
      display: inline
      options:
        min: 2014
        max: 2023
    model: utilities_looker
    explore: a300_energy_bill_forecast_msoa_geo_v2
    listens_to_filters: []
    field: a300_energy_bill_forecast_msoa_geo_v2.year
