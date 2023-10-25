view: formulario_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.formulario_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
  }
  dimension: experiencia_compartir {
    type: yesno
    sql: ${TABLE}.experiencia_compartir ;;
  }
  dimension: experiencia_sugerencia {
    type: string
    sql: ${TABLE}.experiencia_sugerencia ;;
  }
  dimension: experiencia_titulo {
    type: string
    sql: ${TABLE}.experiencia_titulo ;;
  }
  dimension: experiencia_visible {
    type: yesno
    sql: ${TABLE}.experiencia_visible ;;
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
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formulario_servicio_detalle.count, formulario_servicio_respuesta.count, formulario_servicio_respuesta_detalle.count, subcategoria.count]
  }
}
