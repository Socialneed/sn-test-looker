view: usuario_dispositivo {
  sql_table_name: `socialneed-monolith-api-mx`.usuario_dispositivo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }
  dimension: sistema_operativo {
    type: string
    sql: ${TABLE}.sistema_operativo ;;
  }
  dimension: token_gcm {
    type: string
    sql: ${TABLE}.token_gcm ;;
  }
  dimension: usuario_id {
    type: number
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
