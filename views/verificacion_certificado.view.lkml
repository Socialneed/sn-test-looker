view: verificacion_certificado {
  sql_table_name: `socialneed-monolith-api-mx`.verificacion_certificado ;;
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
  dimension: formulario_servicio_respuesta_detalle_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_respuesta_detalle_id ;;
  }
  dimension: verificado {
    type: yesno
    sql: ${TABLE}.verificado ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formulario_servicio_respuesta_detalle.id]
  }
}
