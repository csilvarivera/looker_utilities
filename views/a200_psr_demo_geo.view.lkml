# The name of this view in Looker is "A200 Psr Demo Geo"
view: a200_psr_demo_geo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a200_psr_demo_geo`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age Related" in Explore.

  # Parameters
  parameter: company_select_param{
    type:  string
    description: "Select company"
    allowed_value: {label: "British Gas" value: "British Gas"}
    allowed_value: {label: "Cadent" value: "Cadent"}
    allowed_value: {label: "EDF" value: "EDF"}
    allowed_value: {label: "EON" value: "EON"}
    allowed_value: {label: "Thames Water" value: "Thames Water"}
    allowed_value: {label: "UKPN" value: "UKPN"}
  }

  dimension: internal_or_external {
    type: string
    description: "To be used with scatter chart"
    sql: {% if company_select_param._parameter_value == "'British Gas'" %}
              IF(${company_name}="British Gas","Internal","External")
            {% elsif company_select_param._parameter_value == "'Cadent'" %}
             IF(${company_name}="Cadent","Internal","External")
           {% elsif company_select_param._parameter_value == "'EDF'" %}
              IF(${company_name}="EDF","Internal","External")
           {% elsif company_select_param._parameter_value == "'EON'" %}
            IF(${company_name}="EON","Internal","External")
           {% elsif company_select_param._parameter_value == "'Thames Water'" %}
             IF(${company_name}="Thames Water","Internal","External ")
            {% else %}
              IF(${company_name}="UKPN","Internal","External")
            {% endif %};;
    html: {{internal_or_external._rendered_value}}  ;;
  }


  measure: internal_or_external_measure {
    type: max
    sql:  ${internal_or_external} ;;
  }


  measure: internal_count_distinct {
    type:  count_distinct
    description: "Does this UPRN exist only externally"
    sql:  ${internal_or_external} ;;
  }

  measure: only_external {
    type:  yesno
    description: "Does this UPRN exist only internally"
    sql:  ${internal_count_distinct}<2 AND ${internal_or_external_measure} = "External" ;;
  }

  measure: name_redact {
    type:  string
    description: "Redact name"
    sql:  if(${a200_psr_demo_geo.only_external}, "***", concat(${a200_psr_demo_geo.first_name}, " ", ${a200_psr_demo_geo.surname})) ;;
  }

  measure: email_redact {
    type:  string
    description: "Redact email"
    sql:  if(${a200_psr_demo_geo.only_external}, "***", ${email_address}) ;;
  }

  dimension: age_related {
    type: yesno
    sql: ${TABLE}.AGE_RELATED ;;
  }

  dimension: bua11_cd {
    type: string
    sql: ${TABLE}.BUA11CD ;;
  }

  dimension: buasd11_cd {
    type: string
    sql: ${TABLE}.BUASD11CD ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: ccg17_cd {
    type: string
    sql: ${TABLE}.CCG17CD ;;
  }

  dimension: ced17_cd {
    type: string
    sql: ${TABLE}.CED17CD ;;
  }

  dimension: communication_need {
    type: yesno
    sql: ${TABLE}.COMMUNICATION_NEED ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
    html: {{ company_name._rendered_value }};;
  }

  dimension: company_name_nolist {
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
  }

  dimension: company_type {
    type: string
    sql: ${TABLE}.COMPANY_TYPE ;;
  }

  dimension: ctry11_cd {
    type: string
    sql: ${TABLE}.CTRY11CD ;;
  }

  dimension: cty21_cd {
    type: string
    sql: ${TABLE}.CTY21CD ;;
  }

  dimension: date_inserted {
    type: number
    sql: ${TABLE}.DATE_INSERTED ;;
  }

  dimension: date_updated {
    type: number
    sql: ${TABLE}.DATE_UPDATED ;;
  }

  dimension: eastings {
    type: number
    sql: ${TABLE}.EASTINGS ;;
  }

  dimension: eer11_cd {
    type: string
    sql: ${TABLE}.EER11CD ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: financial_difficulty {
    type: yesno
    sql: ${TABLE}.FINANCIAL_DIFFICULTY ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: formatted_address {
    type: string
    sql: ${TABLE}.FORMATTED_ADDRESS ;;
  }

  dimension: gcd_locality {
    type: string
    sql: ${TABLE}.GCD_LOCALITY ;;
  }

  dimension: gcd_postal_code {
    type: string
    sql: ${TABLE}.GCD_POSTAL_CODE ;;
  }

  dimension: gcd_postal_town {
    type: string
    sql: ${TABLE}.GCD_POSTAL_TOWN ;;
  }

  dimension: gcd_route {
    type: string
    sql: ${TABLE}.GCD_ROUTE ;;
  }

  dimension: gcd_street_number {
    type: string
    sql: ${TABLE}.GCD_STREET_NUMBER ;;
  }

  dimension: health_condition {
    type: yesno
    sql: ${TABLE}.HEALTH_CONDITION ;;
  }

  dimension: hlth19_cd {
    type: string
    sql: ${TABLE}.HLTH19CD ;;
  }

  dimension: imd19_ind {
    type: number
    sql: ${TABLE}.IMD19IND ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.INDEX ;;
  }

  dimension: itl21_cd {
    type: string
    sql: ${TABLE}.ITL21CD ;;
  }

  dimension: lad21_cd {
    type: string
    sql: ${TABLE}.LAD21CD ;;
  }

  dimension: lad21_nm {
    type: string
    sql: ${TABLE}.LAD21NM ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.LAT ;;
  }

  dimension: lep17_cd1 {
    type: string
    sql: ${TABLE}.LEP17CD1 ;;
  }

  dimension: lep17_cd2 {
    type: string
    sql: ${TABLE}.LEP17CD2 ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.LOCATION_TYPE ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.LON ;;
  }

  dimension: lsoa11_cd {
    type: string
    sql: ${TABLE}.LSOA11CD ;;
  }

  dimension: medical_electricity_dependent {
    type: yesno
    sql: ${TABLE}.MEDICAL_ELECTRICITY_DEPENDENT ;;
  }

  dimension: medical_water_dependent {
    type: yesno
    sql: ${TABLE}.MEDICAL_WATER_DEPENDENT ;;
  }

  dimension: mobility_related {
    type: yesno
    sql: ${TABLE}.MOBILITY_RELATED ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11nm ;;
  }

  dimension: northings {
    type: number
    sql: ${TABLE}.NORTHINGS ;;
  }

  dimension: npark16_cd {
    type: string
    sql: ${TABLE}.NPARK16CD ;;
  }

  dimension: oa11_cd {
    type: string
    sql: ${TABLE}.OA11CD ;;
  }

  dimension: oac11_ind {
    type: string
    sql: ${TABLE}.OAC11IND ;;
  }

  dimension: pcds {
    type: string
    sql: ${TABLE}.PCDS ;;
  }

  dimension: pcon11_cd {
    type: string
    sql: ${TABLE}.PCON11CD ;;
  }

  dimension: pfa15_cd {
    type: string
    sql: ${TABLE}.PFA15CD ;;
  }

  dimension: phone_number {
    type: number
    sql: ${TABLE}.PHONE_NUMBER ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.RESULT ;;
  }

  dimension: rgn11_cd {
    type: string
    sql: ${TABLE}.RGN11CD ;;
  }

  dimension: ruc11_ind {
    type: string
    sql: ${TABLE}.RUC11IND ;;
  }

  dimension: safety_related {
    type: yesno
    sql: ${TABLE}.SAFETY_RELATED ;;
  }

  dimension: surname {
    type: string
    sql: ${TABLE}.SURNAME ;;
  }

  dimension: temporary_registration {
    type: yesno
    sql: ${TABLE}.TEMPORARY_REGISTRATION ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: ttwa15_cd {
    type: string
    sql: ${TABLE}.TTWA15CD ;;
  }

  dimension: uprn {
    type: string
    sql: ${TABLE}.UPRN;;
  }

  dimension: uprn_geo {
    type: string
    sql: ${TABLE}.UPRN_GEO ;;
  }

  measure: vulnerability_details {
    type: string
    sql: max(${TABLE}.VULNERABILITY_DETAILS) ;;
    html:
    <ul>
      <li> Priority Category: {{ vulnerable_category._rendered_value }} </li>
      <li> Priority Detail: {{ vulnerability_details._rendered_value }} </li>
    </ul>
    ;;
  }

  measure: vulnerability_details_nolist {
    type: string
    sql: max(${TABLE}.VULNERABILITY_DETAILS) ;;
  }

  measure: vulnerable_category {
    type: string
    sql: max(${TABLE}.VULNERABLE_CATEGORY)  ;;
  }

  dimension: wd19_cd {
    type: string
    sql: ${TABLE}.WD19CD ;;
  }

  dimension: wz11_cd {
    type: string
    sql: ${TABLE}.WZ11CD ;;
  }

  dimension: address_latlong{
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;
    html:
      <ul>
        <li> UPRN: {{uprn._rendered_value }} </li>
        <li> Address: {{ formatted_address._rendered_value }} </li>
      </ul>
    ;;
  }

  dimension: address_latlong_oneline{
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;

  }

}
