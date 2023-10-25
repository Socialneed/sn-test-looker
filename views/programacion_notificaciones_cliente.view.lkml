view: programacion_notificaciones_cliente {
  sql_table_name: `socialneed-monolith-api-mx`.programacion_notificaciones_cliente ;;
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
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: segundos {
    type: number
    sql: ${TABLE}.segundos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
