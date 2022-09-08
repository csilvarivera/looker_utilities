# The name of this view in Looker is "A100 Pcd Lsoa Map"
view: a100_pcd_lsoa_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a100_pcd_lsoa_map`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dointr" in Explore.

  dimension: dointr {
    type: number
    sql: ${TABLE}.DOINTR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dointr {
    type: sum
    sql: ${dointr} ;;
  }

  measure: average_dointr {
    type: average
    sql: ${dointr} ;;
  }

  dimension: doterm {
    type: number
    sql: ${TABLE}.DOTERM ;;
  }

  dimension: ladcd {
    type: string
    sql: ${TABLE}.LADCD ;;
  }

  dimension: ladnm {
    type: string
    sql: ${TABLE}.LADNM ;;
  }

  dimension: ladnmw {
    type: string
    sql: ${TABLE}.LADNMW ;;
  }

  dimension: lsoa11_cd {
    type: string
    sql: ${TABLE}.LSOA11CD ;;
  }

  dimension: lsoa11_nm {
    type: string
    sql: ${TABLE}.LSOA11NM ;;
  }

  dimension: msoa11_cd {
    type: string
    sql: ${TABLE}.MSOA11CD ;;
  }

  dimension: msoa11_nm {
    type: string
    sql: ${TABLE}.MSOA11NM ;;
  }

  dimension: oa11_cd {
    type: string
    sql: ${TABLE}.OA11CD ;;
  }

  dimension: pcd7 {
    type: string
    sql: ${TABLE}.PCD7 ;;
  }

  dimension: pcd8 {
    type: string
    sql: ${TABLE}.PCD8 ;;
  }

  dimension: pcds {
    type: string
    sql: ${TABLE}.PCDS ;;
  }

  dimension: usertype {
    type: number
    sql: ${TABLE}.USERTYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
