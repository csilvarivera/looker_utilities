- dashboard: shared_psr_overview
  title: Shared PSR Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CNW1s6X8sSuz4qpCLi5hzc
  elements:
  - name: Shared Priority Service Register
    type: text
    title_text: Shared Priority Service Register
    subtitle_text: Demo v 0.1 Overview
    body_text: "### __Disclaimer:__ _All customer data used in the demo is simulated.\
      \ Google does not possess or share internal customer data belonging any of its\
      \ clients._ \n\n___\n\n###  __Overview__\nThis demo illustrates how Google’\
      s Cloud offering can be used to create a shared priority service register amongst\
      \ UK utilities. \n\nA Priority Service Register (PSR) is a database of self\
      \ identified vulnerable customers that is maintained by utility companies like\
      \ EDF (Electricity & Gas retailer), Cadent Gas (Gas Distribution Network Operator)\
      \ and Thames Water (Water Utility). \n\nCurrently, each utility manages their\
      \ own copy of a PSR and there is minimal sharing of data amongst firms. Charities\
      \ and other organizations also collect and maintain similar lists.\n\nMany utilities\
      \ companies recognize the strategic benefits of forming a unified National Priority\
      \ Services Register but significant organizational and technical obstacles have\
      \ prevented such initiatives from taking hold. PSR’s contain Personal Identifiable\
      \ Information (PII) and thus privacy and data protection rules need to be adhered\
      \ to when sharing this data with external parties. This issue of privacy has\
      \ been the main source of hesitation for utilities about sharing their PSR data.\n\
      \nThe team at Google Cloud has been developing an achievable vision for a centrally\
      \ hosted and appropriately permissioned National Priority Service Register.\
      \ This demo serves as a proof of concept for this vision and exists purely as\
      \ a cosmetic visualization of the functionality for the proposed architecture.\n\
      \nThe target architecture relies on the [Analytics Hub](https://cloud.google.com/analytics-hub)\
      \ offering; a product which operates on top of Google’s BigQuery database. \
      \   \n\n___\n\n### __Analytics Hub__\nAnalytics Hub is a framework layer that\
      \ sits on top of BigQuery and allows data assets to be managed in a centralized\
      \ hub. It is the ideal solution for this problem for the following reasons.\n\
      1. Analytics hub allows data publishers to separate shared dataset from a source\
      \ dataset. This way, each publisher (utilities/charities) can clearly differentiate\
      \ between internal and shared data sets. \n\n2. Analytics hub doesn’t have to\
      \ be hosted by a publisher or subscriber, it can be hosted by a private, public\
      \ or commercial third party. This addresses some concerns around ownership of\
      \ the shared PSR.\n\n 3. Analytics hub inherits IAM (Identity and Access Management)\
      \ policies which can be specified in a data catalog. This automatically applies\
      \ restricts visibility of PII to only authorized subscribers/publishers.  \n\
      \n 4. Analytics hub retains access to key capabilities of BigQuery like its\
      \ built-in ML, real-time, and geospatial analytics. This allows any subscriber\
      \ to perform their own modeling and analytics on the data at the level at which\
      \ they are authorized to see.    \n\n---\n__Analytics Hub Archictecture__\n\n\
      \n<img src=\"https://i.imgur.com/AuGSQXr.png\" width=\"75%\" height=\"75%\"\
      >\n\n___\n\n__PSR Data Sharing Diagram__\n\nIndividual households in the UK\
      \ are identified by their [UPRN (Unique Property Reference Number)](https://www.geoplace.co.uk/addresses-streets/location-data/the-uprn).\
      \ This allows instituatons to share PSR data while redacting sensitive information\
      \ such as Name, Email address, etc. \n\nThe diagram below shows how the same\
      \ UPRN can be registered under one or multiple PSRs. The primary use case for\
      \ the shared PSR solution is to bring these multiple PSRs together so their\
      \ data can be reconciled and merged.\n\n<img src=\"https://i.imgur.com/5W8gPmd.png\"\
      \ width=\"50%\" height=\"50%\">"
    row: 1
    col: 0
    width: 24
    height: 22
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
    width: 23
    height: 1
