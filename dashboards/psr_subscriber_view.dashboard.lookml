- dashboard: psr_subscriber_view
  title: PSR Subscriber View
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: nXprHjLgiehb8rUrA4yi82
  elements:
  - title: PSR Postcode Level
    name: PSR Postcode Level
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: looker_google_map
    fields: [a200_psr_demo_geo_agg.vulnerability_details, a200_psr_demo_geo_agg.address_latlong_oneline]
    sorts: [a200_psr_demo_geo_agg.vulnerability_details desc 0]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    map_marker_type: icon
    map_marker_icon_name: house
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    series_types: {}
    listen:
      Ladnm: a200_psr_demo_geo_agg.ladnm
    row: 5
    col: 0
    width: 12
    height: 8
  - title: Number of Households in PSR (MSOA Level)
    name: Number of Households in PSR (MSOA Level)
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: looker_google_map
    fields: [a200_psr_demo_geo_agg.uprn_count, a200_psr_demo_geo_agg.pct_households_psr,
      a200_psr_demo_geo_agg.msoa_latlong]
    sorts: [a200_psr_demo_geo_agg.uprn_count desc 0]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: house
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_radius_min: 100
    map_marker_radius_max: 1000
    map_marker_proportional_scale_type: log
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_scale_indicator: 'off'
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    series_types: {}
    listen:
      Ladnm: a200_psr_demo_geo_agg.ladnm
    row: 5
    col: 12
    width: 12
    height: 8
  - title: MSOA PSR Aggregation
    name: MSOA PSR Aggregation
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: looker_grid
    fields: [a200_psr_demo_geo_agg.ladnm, a200_psr_demo_geo_agg.msoa11_nm, a200_psr_demo_geo_agg.uprn_count_justnum,
      a200_psr_demo_geo_agg.pct_households_psr_justpct, a200_psr_demo_geo_agg.households_in_poverty,
      a200_psr_demo_geo_agg.pct_households_fuel_poverty, a200_psr_demo_geo_agg.avg_annual_bill_energy,
      a200_psr_demo_geo_agg.income_after_housing_energy]
    sorts: [a200_psr_demo_geo_agg.ladnm, a200_psr_demo_geo_agg.uprn_count_justnum
        desc]
    limit: 500
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
      a200_psr_demo_geo_agg.ladnm: Local Authority
      a200_psr_demo_geo_agg.msoa11_nm: MSOA
      a200_psr_demo_geo_agg.uprn_count_justnum: PSR Households
      a200_psr_demo_geo_agg.avg_annual_bill_energy: Avg Annual Energy Bill
      a200_psr_demo_geo_agg.households_in_poverty: Households in Fuel Poverty
      a200_psr_demo_geo_agg.pct_households_psr_justpct: "% Households in PSR"
      a200_psr_demo_geo_agg.pct_households_fuel_poverty: "% of Households in Fuel\
        \ Poverty"
      a200_psr_demo_geo_agg.income_after_housing_energy: Annual Disposable Income
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    series_types: {}
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 19
    col: 0
    width: 24
    height: 8
  - title: Medical + Electricity Dependent
    name: Medical + Electricity Dependent
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: looker_grid
    fields: [a200_psr_demo_geo_agg.medical_electricity_dependent, a200_psr_demo_geo_agg.uprn_count_justnum,
      a200_psr_demo_geo_agg.medical_water_dependent]
    pivots: [a200_psr_demo_geo_agg.medical_electricity_dependent]
    fill_fields: [a200_psr_demo_geo_agg.medical_electricity_dependent, a200_psr_demo_geo_agg.medical_water_dependent]
    sorts: [a200_psr_demo_geo_agg.medical_electricity_dependent, a200_psr_demo_geo_agg.uprn_count_justnum
        desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 13
    col: 0
    width: 12
    height: 3
  - title: Priority Groups
    name: Priority Groups
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: looker_grid
    fields: [a200_psr_demo_geo_agg.vulnerable_category_dimension, a200_psr_demo_geo_agg.vulnerability_details_nolist_dimension,
      a200_psr_demo_geo_agg.uprn_count_justnum]
    sorts: [a200_psr_demo_geo_agg.uprn_count_justnum desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
      a200_psr_demo_geo_agg.vulnerable_category: Priority Categories
      a200_psr_demo_geo_agg.vulnerability_details_nolist: Priority Details
      a200_psr_demo_geo_agg.vulnerable_category_dimension: Priority Category
      a200_psr_demo_geo_agg.vulnerability_details_nolist_dimension: Priority Details
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    title_hidden: true
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 13
    col: 12
    width: 12
    height: 6
  - title: Financial Difficulties
    name: Financial Difficulties
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: single_value
    fields: [a200_psr_demo_geo_agg.financial_difficulty, a200_psr_demo_geo_agg.uprn_count_justnum]
    fill_fields: [a200_psr_demo_geo_agg.financial_difficulty]
    sorts: [a200_psr_demo_geo_agg.uprn_count_justnum desc]
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
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: [a200_psr_demo_geo_agg.financial_difficulty]
    hidden_points_if_no: [a200_psr_demo_geo_agg.financial_difficulty]
    show_null_points: true
    interpolation: linear
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 16
    col: 0
    width: 3
    height: 3
  - title: Health Conditions
    name: Health Conditions
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: single_value
    fields: [a200_psr_demo_geo_agg.uprn_count_justnum, a200_psr_demo_geo_agg.health_condition]
    fill_fields: [a200_psr_demo_geo_agg.health_condition]
    sorts: [a200_psr_demo_geo_agg.uprn_count_justnum desc]
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
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: []
    hidden_points_if_no: [a200_psr_demo_geo_agg.health_condition]
    show_null_points: true
    interpolation: linear
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 16
    col: 6
    width: 3
    height: 3
  - title: Communication difficulties
    name: Communication difficulties
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: single_value
    fields: [a200_psr_demo_geo_agg.uprn_count_justnum, a200_psr_demo_geo_agg.communication_need]
    fill_fields: [a200_psr_demo_geo_agg.communication_need]
    sorts: [a200_psr_demo_geo_agg.uprn_count_justnum desc]
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
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: []
    hidden_points_if_no: [a200_psr_demo_geo_agg.communication_need]
    show_null_points: true
    interpolation: linear
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 16
    col: 9
    width: 3
    height: 3
  - title: Impaired Mobility
    name: Impaired Mobility
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    type: single_value
    fields: [a200_psr_demo_geo_agg.uprn_count_justnum, a200_psr_demo_geo_agg.mobility_related]
    fill_fields: [a200_psr_demo_geo_agg.mobility_related]
    sorts: [a200_psr_demo_geo_agg.uprn_count_justnum desc]
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
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo_agg.uprn_count_justnum: Households
    series_cell_visualizations:
      a200_psr_demo_geo_agg.uprn_count_justnum:
        is_active: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: []
    hidden_points_if_no: [a200_psr_demo_geo_agg.mobility_related]
    show_null_points: true
    interpolation: linear
    listen:
      Medical Water Dependent (Yes / No): a200_psr_demo_geo_agg.medical_water_dependent
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo_agg.medical_electricity_dependent
      Communication Need (Yes / No): a200_psr_demo_geo_agg.communication_need
      Health Condition (Yes / No): a200_psr_demo_geo_agg.health_condition
      Financial Difficulty (Yes / No): a200_psr_demo_geo_agg.financial_difficulty
      Age Related (Yes / No): a200_psr_demo_geo_agg.age_related
      Mobility Related (Yes / No): a200_psr_demo_geo_agg.mobility_related
      Safety Related (Yes / No): a200_psr_demo_geo_agg.safety_related
      Ladnm: a200_psr_demo_geo_agg.ladnm
      Msoa11 Nm: a200_psr_demo_geo_agg.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo_agg.temporary_registration
    row: 16
    col: 3
    width: 3
    height: 3
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
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 1
  - name: Shared PSR Subscriber View
    type: text
    title_text: Shared PSR Subscriber View
    subtitle_text: ''
    body_text: "### __Introduction:__ \nThis page simulates the view of the shared\
      \ PSR in the Analytics Hub from the perspective of a non-contributing subscriber\
      \ (eg. a research institution working to asses energy vulnerability in the population).\
      \ \nThe non-contributing subscriber does not have access to any identifiable\
      \ customer data.\n\n### __Disclaimer:__ _All customer data used in the demo\
      \ is simulated. Google does not possess or share internal customer data belonging\
      \ any of its clients._ "
    row: 1
    col: 0
    width: 24
    height: 4
  filters:
  - name: Ladnm
    title: Ladnm
    type: field_filter
    default_value: Greenwich
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.ladnm
  - name: Msoa11 Nm
    title: Msoa11 Nm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: [Ladnm]
    field: a200_psr_demo_geo_agg.msoa11_nm
  - name: Communication Need (Yes / No)
    title: Communication Need (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.communication_need
  - name: Financial Difficulty (Yes / No)
    title: Financial Difficulty (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.financial_difficulty
  - name: Health Condition (Yes / No)
    title: Health Condition (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.health_condition
  - name: Medical Electricity Dependent (Yes / No)
    title: Medical Electricity Dependent (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.medical_electricity_dependent
  - name: Medical Water Dependent (Yes / No)
    title: Medical Water Dependent (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.medical_water_dependent
  - name: Age Related (Yes / No)
    title: Age Related (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.age_related
  - name: Safety Related (Yes / No)
    title: Safety Related (Yes / No)
    type: field_filter
    default_value: No,Yes
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.safety_related
  - name: Mobility Related (Yes / No)
    title: Mobility Related (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.mobility_related
  - name: Temporary Registration (Yes / No)
    title: Temporary Registration (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo_agg
    listens_to_filters: []
    field: a200_psr_demo_geo_agg.temporary_registration
