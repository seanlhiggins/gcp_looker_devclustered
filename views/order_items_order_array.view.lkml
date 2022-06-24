view: order_items_order_array {
  sql_table_name: `the_look_perf_shiggins_2.order_items_order_array`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: order_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_created_at ;;
  }

  dimension: order_ids {
    hidden: yes
    sql: ${TABLE}.order_ids ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.product_category ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: order_items_order_array__order_ids {
  dimension: order_items_order_array__order_ids {
    type: number
    value_format_name: id
    sql: order_items_order_array__order_ids ;;
  }
}
