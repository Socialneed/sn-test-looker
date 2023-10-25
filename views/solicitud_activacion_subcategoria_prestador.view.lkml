view: solicitud_activacion_subcategoria_prestador {
  sql_table_name: `socialneed-monolith-api-mx`.solicitud_activacion_subcategoria_prestador ;;
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
  dimension: formulario_servicio_respuesta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_respuesta_id ;;
  }
  dimension: prestador_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.prestador_servicio_id ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: subcategoria_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.subcategoria_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, prestador_servicio.id, subcategoria.id, formulario_servicio_respuesta.id]
  }
}
