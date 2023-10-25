view: reglas_formulario_servicio_condiciones {
  sql_table_name: `socialneed-monolith-api-mx`.reglas_formulario_servicio_condiciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: es_validacion {
    type: yesno
    sql: ${TABLE}.es_validacion ;;
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
  dimension: id_condicion {
    type: number
    sql: ${TABLE}.id_condicion ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_formulario_servicio_detalle {
    type: number
    sql: ${TABLE}.id_formulario_servicio_detalle ;;
  }
  dimension: id_regla_formulario_servicio {
    type: number
    sql: ${TABLE}.id_regla_formulario_servicio ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
