view: formulario_servicio_respuesta {
  sql_table_name: `socialneed-monolith-api-mx`.formulario_servicio_respuesta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activado {
    type: yesno
    sql: ${TABLE}.activado ;;
  }
  dimension: compartir_video_perfil {
    type: yesno
    sql: ${TABLE}.compartir_video_perfil ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
  }
  dimension: experiencia {
    type: string
    sql: ${TABLE}.experiencia ;;
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
  dimension: formulario_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_id ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	formulario_servicio.id,
	prestador_servicio.id,
	subcategoria.id,
	formulario_servicio_respuesta_detalle.count,
	solicitud_activacion_subcategoria_prestador.count
	]
  }

}
