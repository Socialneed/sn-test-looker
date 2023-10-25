view: stripe_customers {
  sql_table_name: `socialneed-monolith-api-mx`.stripe_customers ;;
  drill_fields: [stripe_customer_id]

  dimension: stripe_customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.stripe_customer_id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [stripe_customer_id, users.id, users.name]
  }
}
