view: stripe_payments_intents {
  sql_table_name: `socialneed-monolith-api-mx`.stripe_payments_intents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: client_secret {
    type: string
    sql: ${TABLE}.client_secret ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: payment_intent_id {
    type: string
    sql: ${TABLE}.payment_intent_id ;;
  }
  dimension: solicitud_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.solicitud_servicio_id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud_servicio.id, users.id, users.name]
  }
}
