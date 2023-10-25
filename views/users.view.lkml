view: users {
  sql_table_name: `socialneed-monolith-api-mx`.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dni {
    type: string
    sql: ${TABLE}.dni ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
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
  dimension: idperfil {
    type: number
    sql: ${TABLE}.idperfil ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: url_imagen {
    type: string
    sql: ${TABLE}.url_imagen ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, metodo_pago.count, stripe_customers.count, stripe_payments_intents.count]
  }
}
