view: tareas_basicas_respuestas {
  sql_table_name: `socialneed-monolith-api-mx`.tareas_basicas_respuestas ;;
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
  dimension: pregunta_id {
    type: number
    sql: ${TABLE}.pregunta_id ;;
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
