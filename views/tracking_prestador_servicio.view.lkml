view: tracking_prestador_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.tracking_prestador_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado_id_prestador_servicio {
    type: number
    value_format_name: id
    sql: ${TABLE}.estado_id_prestador_servicio ;;
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
  dimension: latitud {
    type: string
    sql: ${TABLE}.latitud ;;
  }
  dimension: longitud {
    type: string
    sql: ${TABLE}.longitud ;;
  }
  dimension: prestador_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.prestador_servicio_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, prestador_servicio.id]
  }
}
