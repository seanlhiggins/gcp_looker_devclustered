view: products_clustered {
  sql_table_name: `the_look_perf_shiggins_2.products_clustered`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
