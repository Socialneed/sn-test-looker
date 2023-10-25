view: notificaciones_push_prestador_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.notificaciones_push_prestador_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_prestador_servicio {
    type: number
    sql: ${TABLE}.id_prestador_servicio ;;
  }
  dimension: notificacion {
    type: string
    sql: ${TABLE}.notificacion ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: visto {
    type: yesno
    sql: ${TABLE}.visto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
