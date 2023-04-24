- dashboard: psr_contributor_view
  title: PSR Contributor View
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jF7C5pvzHovnT1g36gRwQq
  elements:
  - title: PSR Merged  (Internal + External)
    name: PSR Merged  (Internal + External)
    model: utilities_looker
    explore: a200_psr_demo_geo
    type: looker_map
    fields: [a200_psr_demo_geo.address_latlong, a200_psr_demo_geo.vulnerability_details,
      a200_psr_demo_geo.company_name, a200_psr_demo_geo.internal_or_external, a200_psr_demo_geo.overlay_or_not]
    pivots: [a200_psr_demo_geo.internal_or_external, a200_psr_demo_geo.company_name]
    filters: {}
    sorts: [a200_psr_demo_geo.internal_or_external desc, a200_psr_demo_geo.company_name,
      a200_psr_demo_geo.vulnerability_details desc 0]
    limit: 500
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
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    map_marker_radius_fixed: 10
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
    defaults_version: 1
    series_types: {}
    listen:
      Age Related (Yes / No): a200_psr_demo_geo.age_related
      Communication Need (Yes / No): a200_psr_demo_geo.communication_need
      Financial Difficulty (Yes / No): a200_psr_demo_geo.financial_difficulty
      Health Condition (Yes / No): a200_psr_demo_geo.health_condition
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo.medical_electricity_dependent
      Medical Water Dependent (Yes / No): a200_psr_demo_geo.medical_water_dependent
      Safety Related (Yes / No): a200_psr_demo_geo.safety_related
      Mobility Related (Yes / No): a200_psr_demo_geo.mobility_related
      Local Authority: a200_psr_demo_geo.lad21_nm
      MSOA: a200_psr_demo_geo.msoa11_nm
      Overlay External PSR: a200_psr_demo_geo.company_name
      Overlay PSR Service Type: a200_psr_demo_geo.company_type
      Overlay Utility Type: a200_psr_demo_geo.product_type
      Temporary Registration (Yes / No): a200_psr_demo_geo.temporary_registration
      Internal PSR: a200_psr_demo_geo.company_select_param
      UPRN Search: a200_psr_demo_geo.uprn
      Address Search: a200_psr_demo_geo.formatted_address
    row: 5
    col: 12
    width: 12
    height: 8
  - title: Internal PSR
    name: Internal PSR
    model: utilities_looker
    explore: a200_psr_demo_geo
    type: looker_google_map
    fields: [a200_psr_demo_geo.address_latlong, a200_psr_demo_geo.vulnerability_details]
    filters:
      a200_psr_demo_geo.internal_or_external: Internal
    sorts: [a200_psr_demo_geo.address_latlong]
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
    map_marker_type: icon
    map_marker_icon_name: house
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Age Related (Yes / No): a200_psr_demo_geo.age_related
      Communication Need (Yes / No): a200_psr_demo_geo.communication_need
      Financial Difficulty (Yes / No): a200_psr_demo_geo.financial_difficulty
      Health Condition (Yes / No): a200_psr_demo_geo.health_condition
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo.medical_electricity_dependent
      Medical Water Dependent (Yes / No): a200_psr_demo_geo.medical_water_dependent
      Safety Related (Yes / No): a200_psr_demo_geo.safety_related
      Mobility Related (Yes / No): a200_psr_demo_geo.mobility_related
      Local Authority: a200_psr_demo_geo.lad21_nm
      MSOA: a200_psr_demo_geo.msoa11_nm
      Temporary Registration (Yes / No): a200_psr_demo_geo.temporary_registration
      Internal PSR: a200_psr_demo_geo.company_select_param
      UPRN Search: a200_psr_demo_geo.uprn
      Address Search: a200_psr_demo_geo.formatted_address
    row: 5
    col: 0
    width: 12
    height: 8
  - title: Merged PSR Table
    name: Merged PSR Table
    model: utilities_looker
    explore: a200_psr_demo_geo
    type: looker_grid
    fields: [a200_psr_demo_geo.address_latlong_oneline, a200_psr_demo_geo.uprn, a200_psr_demo_geo.name_redact,
      a200_psr_demo_geo.vulnerability_details_nolist, a200_psr_demo_geo.internal_or_external,
      a200_psr_demo_geo.company_name_nolist, a200_psr_demo_geo.first_name, a200_psr_demo_geo.surname]
    pivots: [a200_psr_demo_geo.internal_or_external, a200_psr_demo_geo.company_name_nolist]
    sorts: [a200_psr_demo_geo.internal_or_external desc, a200_psr_demo_geo.company_name_nolist,
      a200_psr_demo_geo.vulnerability_details_nolist desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo.address_latlong_oneline: Address
      a200_psr_demo_geo.uprn: UPRN
      a200_psr_demo_geo.is_my_company: PSR Source
      a200_psr_demo_geo.company_name_nolist: Company
      a200_psr_demo_geo.vulnerability_details_nolist: Priority Details
      a200_psr_demo_geo.name_redact: Name
    series_cell_visualizations: {}
    series_text_format:
      a200_psr_demo_geo.vulnerability_details_nolist: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '100'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: [a200_psr_demo_geo.first_name, a200_psr_demo_geo.surname]
    hidden_points_if_no: []
    map_marker_radius_fixed: 10
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
      Age Related (Yes / No): a200_psr_demo_geo.age_related
      Communication Need (Yes / No): a200_psr_demo_geo.communication_need
      Financial Difficulty (Yes / No): a200_psr_demo_geo.financial_difficulty
      Health Condition (Yes / No): a200_psr_demo_geo.health_condition
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo.medical_electricity_dependent
      Medical Water Dependent (Yes / No): a200_psr_demo_geo.medical_water_dependent
      Safety Related (Yes / No): a200_psr_demo_geo.safety_related
      Mobility Related (Yes / No): a200_psr_demo_geo.mobility_related
      Local Authority: a200_psr_demo_geo.lad21_nm
      MSOA: a200_psr_demo_geo.msoa11_nm
      Overlay External PSR: a200_psr_demo_geo.company_name
      Overlay PSR Service Type: a200_psr_demo_geo.company_type
      Overlay Utility Type: a200_psr_demo_geo.product_type
      Temporary Registration (Yes / No): a200_psr_demo_geo.temporary_registration
      Internal PSR: a200_psr_demo_geo.company_select_param
      UPRN Search: a200_psr_demo_geo.uprn
      Address Search: a200_psr_demo_geo.formatted_address
    row: 13
    col: 0
    width: 24
    height: 8
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 1
  - name: Shared PSR Utilities View
    type: text
    title_text: Shared PSR Utilities View
    subtitle_text: ''
    body_text: "### __Introduction:__ \nThis page simulates a data publishers view\
      \ of the shared PSR in the Analytics Hub. The filter \"Internal PSR\" at the\
      \ top of the page allows you to choose which use you want to view the page as.\n\
      \n### __Disclaimer:__ _All customer data used in the demo is simulated. Google\
      \ does not possess or share internal customer data belonging any of its clients._ "
    row: 1
    col: 0
    width: 24
    height: 4
  - title: PSR Table (UPRN/Address Search)
    name: PSR Table (UPRN/Address Search)
    model: utilities_looker
    explore: a200_psr_demo_geo
    type: looker_grid
    fields: [a200_psr_demo_geo.address_latlong_oneline, a200_psr_demo_geo.uprn, a200_psr_demo_geo.name_redact,
      a200_psr_demo_geo.vulnerability_details_nolist, a200_psr_demo_geo.internal_or_external,
      a200_psr_demo_geo.company_name_nolist, a200_psr_demo_geo.first_name, a200_psr_demo_geo.surname]
    pivots: [a200_psr_demo_geo.address_latlong_oneline, a200_psr_demo_geo.uprn]
    filters: {}
    sorts: [a200_psr_demo_geo.uprn, a200_psr_demo_geo.address_latlong_oneline, a200_psr_demo_geo.first_name,
      a200_psr_demo_geo.surname, a200_psr_demo_geo.internal_or_external desc, a200_psr_demo_geo.company_name_nolist]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      a200_psr_demo_geo.address_latlong_oneline: Address
      a200_psr_demo_geo.uprn: UPRN
      a200_psr_demo_geo.is_my_company: PSR Source
      a200_psr_demo_geo.company_name_nolist: Company
      a200_psr_demo_geo.vulnerability_details_nolist: Priority Details
      a200_psr_demo_geo.name_redact: Name
    series_cell_visualizations: {}
    series_text_format:
      a200_psr_demo_geo.vulnerability_details_nolist: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '100'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#29bff3",
        font_color: !!null '', color_application: {collection_id: create-a-color-collection,
          palette_id: create-a-color-collection-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: [a200_psr_demo_geo.first_name, a200_psr_demo_geo.surname]
    hidden_points_if_no: []
    map_marker_radius_fixed: 10
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
      Age Related (Yes / No): a200_psr_demo_geo.age_related
      Communication Need (Yes / No): a200_psr_demo_geo.communication_need
      Financial Difficulty (Yes / No): a200_psr_demo_geo.financial_difficulty
      Health Condition (Yes / No): a200_psr_demo_geo.health_condition
      Medical Electricity Dependent (Yes / No): a200_psr_demo_geo.medical_electricity_dependent
      Medical Water Dependent (Yes / No): a200_psr_demo_geo.medical_water_dependent
      Safety Related (Yes / No): a200_psr_demo_geo.safety_related
      Mobility Related (Yes / No): a200_psr_demo_geo.mobility_related
      Local Authority: a200_psr_demo_geo.lad21_nm
      MSOA: a200_psr_demo_geo.msoa11_nm
      Overlay External PSR: a200_psr_demo_geo.company_name
      Overlay PSR Service Type: a200_psr_demo_geo.company_type
      Overlay Utility Type: a200_psr_demo_geo.product_type
      Temporary Registration (Yes / No): a200_psr_demo_geo.temporary_registration
      Internal PSR: a200_psr_demo_geo.company_select_param
      UPRN Search: a200_psr_demo_geo.uprn
      Address Search: a200_psr_demo_geo.formatted_address
    row: 21
    col: 0
    width: 14
    height: 7
  filters:
  - name: Internal PSR
    title: Internal PSR
    type: field_filter
    default_value: British Gas
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.company_select_param
  - name: Local Authority
    title: Local Authority
    type: field_filter
    default_value: Newham
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.lad21_nm
  - name: Overlay External PSR
    title: Overlay External PSR
    type: field_filter
    default_value: British Gas,EDF,EON
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.company_name
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.msoa11_nm
  - name: Overlay PSR Service Type
    title: Overlay PSR Service Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: [Overlay External PSR]
    field: a200_psr_demo_geo.company_type
  - name: Overlay Utility Type
    title: Overlay Utility Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: [Overlay External PSR]
    field: a200_psr_demo_geo.product_type
  - name: Communication Need (Yes / No)
    title: Communication Need (Yes / No)
    type: field_filter
    default_value: No,Yes
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.communication_need
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.financial_difficulty
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.health_condition
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.medical_electricity_dependent
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.medical_water_dependent
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.age_related
  - name: Safety Related (Yes / No)
    title: Safety Related (Yes / No)
    type: field_filter
    default_value: Yes,No
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.safety_related
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.mobility_related
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
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.temporary_registration
  - name: UPRN Search
    title: UPRN Search
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.uprn
  - name: Address Search
    title: Address Search
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: utilities_looker
    explore: a200_psr_demo_geo
    listens_to_filters: []
    field: a200_psr_demo_geo.formatted_address
