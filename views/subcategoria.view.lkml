view: subcategoria {
  sql_table_name: `socialneed-monolith-api-mx`.subcategoria ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.categoria_id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
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
  dimension: formulario_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_id ;;
  }
  dimension: mt_distancia_maxima {
    type: number
    sql: ${TABLE}.mt_distancia_maxima ;;
  }
  dimension: palabras_claves {
    type: string
    sql: ${TABLE}.palabras_claves ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: url_imagen {
    type: string
    sql: ${TABLE}.url_imagen ;;
  }
  dimension: url_imagen_lista {
    type: string
    sql: ${TABLE}.url_imagen_lista ;;
  }
  dimension: valor_hora_promedio {
    type: number
    sql: ${TABLE}.valor_hora_promedio ;;
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
	categoria.id,
	formulario_servicio_respuesta.count,
	solicitud_activacion_subcategoria_prestador.count,
	unidad_medida_subcategoria.count
	]
  }

}
