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
    type: number
    sql: ${TABLE}.UPRN ;;
  }

  dimension: uprn_geo {
    type: string
    sql: ${TABLE}.UPRN_GEO ;;
  }

  dimension: vulnerability_details {
    type: string
    sql: ${TABLE}.VULNERABILITY_DETAILS ;;
  }

  dimension: vulnerable_category {
    type: string
    sql: ${TABLE}.VULNERABLE_CATEGORY ;;
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
    html: {{uprn._rendered_value }};;
  }


}
