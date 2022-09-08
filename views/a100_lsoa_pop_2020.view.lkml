# The name of this view in Looker is "A100 Lsoa Pop 2020"
view: a100_lsoa_pop_2020 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `utilitieshub-demo-sandbox.utilitieshubdataset.a100_lsoa_pop_2020`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age 0" in Explore.

  dimension: age_0 {
    type: number
    sql: ${TABLE}.AGE_0 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age_0 {
    type: sum
    sql: ${age_0} ;;
  }

  measure: average_age_0 {
    type: average
    sql: ${age_0} ;;
  }

  dimension: age_1 {
    type: number
    sql: ${TABLE}.AGE_1 ;;
  }

  dimension: age_10 {
    type: number
    sql: ${TABLE}.AGE_10 ;;
  }

  dimension: age_11 {
    type: number
    sql: ${TABLE}.AGE_11 ;;
  }

  dimension: age_12 {
    type: number
    sql: ${TABLE}.AGE_12 ;;
  }

  dimension: age_13 {
    type: number
    sql: ${TABLE}.AGE_13 ;;
  }

  dimension: age_14 {
    type: number
    sql: ${TABLE}.AGE_14 ;;
  }

  dimension: age_15 {
    type: number
    sql: ${TABLE}.AGE_15 ;;
  }

  dimension: age_16 {
    type: number
    sql: ${TABLE}.AGE_16 ;;
  }

  dimension: age_17 {
    type: number
    sql: ${TABLE}.AGE_17 ;;
  }

  dimension: age_18 {
    type: number
    sql: ${TABLE}.AGE_18 ;;
  }

  dimension: age_19 {
    type: number
    sql: ${TABLE}.AGE_19 ;;
  }

  dimension: age_2 {
    type: number
    sql: ${TABLE}.AGE_2 ;;
  }

  dimension: age_20 {
    type: number
    sql: ${TABLE}.AGE_20 ;;
  }

  dimension: age_21 {
    type: number
    sql: ${TABLE}.AGE_21 ;;
  }

  dimension: age_22 {
    type: number
    sql: ${TABLE}.AGE_22 ;;
  }

  dimension: age_23 {
    type: number
    sql: ${TABLE}.AGE_23 ;;
  }

  dimension: age_24 {
    type: number
    sql: ${TABLE}.AGE_24 ;;
  }

  dimension: age_25 {
    type: number
    sql: ${TABLE}.AGE_25 ;;
  }

  dimension: age_26 {
    type: number
    sql: ${TABLE}.AGE_26 ;;
  }

  dimension: age_27 {
    type: number
    sql: ${TABLE}.AGE_27 ;;
  }

  dimension: age_28 {
    type: number
    sql: ${TABLE}.AGE_28 ;;
  }

  dimension: age_29 {
    type: number
    sql: ${TABLE}.AGE_29 ;;
  }

  dimension: age_3 {
    type: number
    sql: ${TABLE}.AGE_3 ;;
  }

  dimension: age_30 {
    type: number
    sql: ${TABLE}.AGE_30 ;;
  }

  dimension: age_31 {
    type: number
    sql: ${TABLE}.AGE_31 ;;
  }

  dimension: age_32 {
    type: number
    sql: ${TABLE}.AGE_32 ;;
  }

  dimension: age_33 {
    type: number
    sql: ${TABLE}.AGE_33 ;;
  }

  dimension: age_34 {
    type: number
    sql: ${TABLE}.AGE_34 ;;
  }

  dimension: age_35 {
    type: number
    sql: ${TABLE}.AGE_35 ;;
  }

  dimension: age_36 {
    type: number
    sql: ${TABLE}.AGE_36 ;;
  }

  dimension: age_37 {
    type: number
    sql: ${TABLE}.AGE_37 ;;
  }

  dimension: age_38 {
    type: number
    sql: ${TABLE}.AGE_38 ;;
  }

  dimension: age_39 {
    type: number
    sql: ${TABLE}.AGE_39 ;;
  }

  dimension: age_4 {
    type: number
    sql: ${TABLE}.AGE_4 ;;
  }

  dimension: age_40 {
    type: number
    sql: ${TABLE}.AGE_40 ;;
  }

  dimension: age_41 {
    type: number
    sql: ${TABLE}.AGE_41 ;;
  }

  dimension: age_42 {
    type: number
    sql: ${TABLE}.AGE_42 ;;
  }

  dimension: age_43 {
    type: number
    sql: ${TABLE}.AGE_43 ;;
  }

  dimension: age_44 {
    type: number
    sql: ${TABLE}.AGE_44 ;;
  }

  dimension: age_45 {
    type: number
    sql: ${TABLE}.AGE_45 ;;
  }

  dimension: age_46 {
    type: number
    sql: ${TABLE}.AGE_46 ;;
  }

  dimension: age_47 {
    type: number
    sql: ${TABLE}.AGE_47 ;;
  }

  dimension: age_48 {
    type: number
    sql: ${TABLE}.AGE_48 ;;
  }

  dimension: age_49 {
    type: number
    sql: ${TABLE}.AGE_49 ;;
  }

  dimension: age_5 {
    type: number
    sql: ${TABLE}.AGE_5 ;;
  }

  dimension: age_50 {
    type: number
    sql: ${TABLE}.AGE_50 ;;
  }

  dimension: age_51 {
    type: number
    sql: ${TABLE}.AGE_51 ;;
  }

  dimension: age_52 {
    type: number
    sql: ${TABLE}.AGE_52 ;;
  }

  dimension: age_53 {
    type: number
    sql: ${TABLE}.AGE_53 ;;
  }

  dimension: age_54 {
    type: number
    sql: ${TABLE}.AGE_54 ;;
  }

  dimension: age_55 {
    type: number
    sql: ${TABLE}.AGE_55 ;;
  }

  dimension: age_56 {
    type: number
    sql: ${TABLE}.AGE_56 ;;
  }

  dimension: age_57 {
    type: number
    sql: ${TABLE}.AGE_57 ;;
  }

  dimension: age_58 {
    type: number
    sql: ${TABLE}.AGE_58 ;;
  }

  dimension: age_59 {
    type: number
    sql: ${TABLE}.AGE_59 ;;
  }

  dimension: age_6 {
    type: number
    sql: ${TABLE}.AGE_6 ;;
  }

  dimension: age_60 {
    type: number
    sql: ${TABLE}.AGE_60 ;;
  }

  dimension: age_61 {
    type: number
    sql: ${TABLE}.AGE_61 ;;
  }

  dimension: age_62 {
    type: number
    sql: ${TABLE}.AGE_62 ;;
  }

  dimension: age_63 {
    type: number
    sql: ${TABLE}.AGE_63 ;;
  }

  dimension: age_64 {
    type: number
    sql: ${TABLE}.AGE_64 ;;
  }

  dimension: age_65 {
    type: number
    sql: ${TABLE}.AGE_65 ;;
  }

  dimension: age_66 {
    type: number
    sql: ${TABLE}.AGE_66 ;;
  }

  dimension: age_67 {
    type: number
    sql: ${TABLE}.AGE_67 ;;
  }

  dimension: age_68 {
    type: number
    sql: ${TABLE}.AGE_68 ;;
  }

  dimension: age_69 {
    type: number
    sql: ${TABLE}.AGE_69 ;;
  }

  dimension: age_7 {
    type: number
    sql: ${TABLE}.AGE_7 ;;
  }

  dimension: age_70 {
    type: number
    sql: ${TABLE}.AGE_70 ;;
  }

  dimension: age_71 {
    type: number
    sql: ${TABLE}.AGE_71 ;;
  }

  dimension: age_72 {
    type: number
    sql: ${TABLE}.AGE_72 ;;
  }

  dimension: age_73 {
    type: number
    sql: ${TABLE}.AGE_73 ;;
  }

  dimension: age_74 {
    type: number
    sql: ${TABLE}.AGE_74 ;;
  }

  dimension: age_75 {
    type: number
    sql: ${TABLE}.AGE_75 ;;
  }

  dimension: age_76 {
    type: number
    sql: ${TABLE}.AGE_76 ;;
  }

  dimension: age_77 {
    type: number
    sql: ${TABLE}.AGE_77 ;;
  }

  dimension: age_78 {
    type: number
    sql: ${TABLE}.AGE_78 ;;
  }

  dimension: age_79 {
    type: number
    sql: ${TABLE}.AGE_79 ;;
  }

  dimension: age_8 {
    type: number
    sql: ${TABLE}.AGE_8 ;;
  }

  dimension: age_80 {
    type: number
    sql: ${TABLE}.AGE_80 ;;
  }

  dimension: age_81 {
    type: number
    sql: ${TABLE}.AGE_81 ;;
  }

  dimension: age_82 {
    type: number
    sql: ${TABLE}.AGE_82 ;;
  }

  dimension: age_83 {
    type: number
    sql: ${TABLE}.AGE_83 ;;
  }

  dimension: age_84 {
    type: number
    sql: ${TABLE}.AGE_84 ;;
  }

  dimension: age_85 {
    type: number
    sql: ${TABLE}.AGE_85 ;;
  }

  dimension: age_86 {
    type: number
    sql: ${TABLE}.AGE_86 ;;
  }

  dimension: age_87 {
    type: number
    sql: ${TABLE}.AGE_87 ;;
  }

  dimension: age_88 {
    type: number
    sql: ${TABLE}.AGE_88 ;;
  }

  dimension: age_89 {
    type: number
    sql: ${TABLE}.AGE_89 ;;
  }

  dimension: age_9 {
    type: number
    sql: ${TABLE}.AGE_9 ;;
  }

  dimension: age_90 {
    type: number
    sql: ${TABLE}.AGE_90 ;;
  }

  dimension: all_ages {
    type: number
    sql: ${TABLE}.ALL_AGES ;;
  }

  dimension: la_code_2018_boundaries {
    type: string
    sql: ${TABLE}.LA_CODE_2018_BOUNDARIES ;;
  }

  dimension: la_code_2021_boundaries {
    type: string
    sql: ${TABLE}.LA_CODE_2021_BOUNDARIES ;;
  }

  dimension: la_name_2018_boundaries {
    type: string
    sql: ${TABLE}.LA_NAME_2018_BOUNDARIES ;;
  }

  dimension: la_name_2021_boundaries {
    type: string
    sql: ${TABLE}.LA_NAME_2021_BOUNDARIES ;;
  }

  dimension: lsoa_code {
    type: string
    sql: ${TABLE}.LSOA_CODE ;;
  }

  dimension: lsoa_name {
    type: string
    sql: ${TABLE}.LSOA_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [lsoa_name]
  }
}
