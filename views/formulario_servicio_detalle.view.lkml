view: formulario_servicio_detalle {
  sql_table_name: `socialneed-monolith-api-mx`.formulario_servicio_detalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bloquear_numeros {
    type: yesno
    sql: ${TABLE}.bloquear_numeros ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: descripcion_cliente {
    type: string
    sql: ${TABLE}.descripcion_cliente ;;
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
  dimension: formato {
    type: string
    sql: ${TABLE}.formato ;;
  }
  dimension: formulario_servicio_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.formulario_servicio_id ;;
  }
  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }
  dimension: info_cliente {
    type: string
    sql: ${TABLE}.info_cliente ;;
  }
  dimension: obligatorio {
    type: yesno
    sql: ${TABLE}.obligatorio ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: orden_cliente {
    type: number
    sql: ${TABLE}.orden_cliente ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: respuesta_mayuscula {
    type: yesno
    sql: ${TABLE}.respuesta_mayuscula ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: visible_cliente {
    type: yesno
    sql: ${TABLE}.visible_cliente ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formulario_servicio.id, formulario_servicio_respuesta_detalle.count]
  }
}
