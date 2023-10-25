view: calificacion_prestador_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.calificacion_prestador_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_prestador_servicio {
    type: number
    sql: ${TABLE}.id_prestador_servicio ;;
  }
  dimension: id_solicitud_servicio {
    type: number
    sql: ${TABLE}.id_solicitud_servicio ;;
  }
  dimension: id_subcategoria {
    type: number
    sql: ${TABLE}.id_subcategoria ;;
  }
  dimension: lista_mejoras {
    type: string
    sql: ${TABLE}.lista_mejoras ;;
  }
  dimension: lista_reconocimientos {
    type: string
    sql: ${TABLE}.lista_reconocimientos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
