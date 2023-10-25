view: formulario_servicio_respuesta_detalle {
  sql_table_name: `socialneed-monolith-api-mx`.formulario_servicio_respuesta_detalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: datos {
    type: string
    sql: ${TABLE}.datos ;;
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
  dimension: formulario_servicio_detalle_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_detalle_id ;;
  }
  dimension: formulario_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_id ;;
  }
  dimension: formulario_servicio_respuesta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_respuesta_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formulario_servicio.id, formulario_servicio_respuesta.id, formulario_servicio_detalle.id, verificacion_certificado.count]
  }
}
