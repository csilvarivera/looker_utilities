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

  dimension: bua11cd {
    type: string
    sql: ${TABLE}.bua11cd ;;
  }

  dimension: buasd11cd {
    type: string
    sql: ${TABLE}.buasd11cd ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: ccg17cd {
    type: string
    sql: ${TABLE}.ccg17cd ;;
  }

  dimension: ced17cd {
    type: string
    sql: ${TABLE}.ced17cd ;;
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

  dimension: ctry11cd {
    type: string
    sql: ${TABLE}.ctry11cd ;;
  }

  dimension: cty21cd {
    type: string
    sql: ${TABLE}.cty21cd ;;
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
    sql: ${TABLE}.eastings ;;
  }

  dimension: eer11cd {
    type: string
    sql: ${TABLE}.eer11cd ;;
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
    sql: ${TABLE}.formatted_address ;;
  }

  dimension: gcd_locality {
    type: string
    sql: ${TABLE}.gcd_locality ;;
  }

  dimension: gcd_postal_code {
    type: string
    sql: ${TABLE}.gcd_postal_code ;;
  }

  dimension: gcd_postal_town {
    type: string
    sql: ${TABLE}.gcd_postal_town ;;
  }

  dimension: gcd_route {
    type: string
    sql: ${TABLE}.gcd_route ;;
  }

  dimension: gcd_street_number {
    type: string
    sql: ${TABLE}.gcd_street_number ;;
  }

  dimension: health_condition {
    type: yesno
    sql: ${TABLE}.HEALTH_CONDITION ;;
  }

  dimension: hlth19cd {
    type: string
    sql: ${TABLE}.hlth19cd ;;
  }

  dimension: imd19ind {
    type: number
    sql: ${TABLE}.imd19ind ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.INDEX ;;
  }

  dimension: itl21cd {
    type: string
    sql: ${TABLE}.itl21cd ;;
  }

  dimension: lad21cd {
    type: string
    sql: ${TABLE}.lad21cd ;;
  }

  dimension: lad21nm {
    type: string
    sql: ${TABLE}.lad21nm ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lep17cd1 {
    type: string
    sql: ${TABLE}.lep17cd1 ;;
  }

  dimension: lep17cd2 {
    type: string
    sql: ${TABLE}.lep17cd2 ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: lsoa11cd {
    type: string
    sql: ${TABLE}.lsoa11cd ;;
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

  dimension: msoa11cd {
    type: string
    sql: ${TABLE}.msoa11cd ;;
  }

  dimension: northings {
    type: number
    sql: ${TABLE}.northings ;;
  }

  dimension: npark16cd {
    type: string
    sql: ${TABLE}.npark16cd ;;
  }

  dimension: oa11cd {
    type: string
    sql: ${TABLE}.oa11cd ;;
  }

  dimension: oac11ind {
    type: string
    sql: ${TABLE}.oac11ind ;;
  }

  dimension: pcds {
    type: string
    sql: ${TABLE}.pcds ;;
  }

  dimension: pcon11cd {
    type: string
    sql: ${TABLE}.pcon11cd ;;
  }

  dimension: pfa15cd {
    type: string
    sql: ${TABLE}.pfa15cd ;;
  }

  dimension: phone_number {
    type: number
    sql: ${TABLE}.PHONE_NUMBER ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_phone_number {
    type: sum
    sql: ${phone_number} ;;
  }

  measure: average_phone_number {
    type: average
    sql: ${phone_number} ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  dimension: rgn11cd {
    type: string
    sql: ${TABLE}.rgn11cd ;;
  }

  dimension: ruc11ind {
    type: string
    sql: ${TABLE}.ruc11ind ;;
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

  dimension: ttwa15cd {
    type: string
    sql: ${TABLE}.ttwa15cd ;;
  }

  dimension: uprn {
    type: number
    sql: ${TABLE}.UPRN ;;
  }

  dimension: uprn_geo {
    type: string
    sql: ${TABLE}.uprn_geo ;;
  }

  dimension: vulnerability_details {
    type: string
    sql: ${TABLE}.VULNERABILITY_DETAILS ;;
  }

  dimension: vulnerable_category {
    type: string
    sql: ${TABLE}.VULNERABLE_CATEGORY ;;
  }

  dimension: wd19cd {
    type: string
    sql: ${TABLE}.wd19cd ;;
  }

  dimension: wz11cd {
    type: string
    sql: ${TABLE}.wz11cd ;;
  }

  dimension: address_latlong{
    type: location
    sql_latitude: ${lat};;
    sql_longitude: ${lon};;
    html: {{uprn._rendered_value }};;
  }
}
