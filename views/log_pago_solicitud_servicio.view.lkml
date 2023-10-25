view: log_pago_solicitud_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.log_pago_solicitud_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_pasarela_pago {
    type: string
    sql: ${TABLE}.codigo_pasarela_pago ;;
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
  dimension: id_metodo_pago {
    type: number
    sql: ${TABLE}.id_metodo_pago ;;
  }
  dimension: id_solicitud_servicio {
    type: number
    sql: ${TABLE}.id_solicitud_servicio ;;
  }
  dimension: json_respuesta {
    type: string
    sql: ${TABLE}.json_respuesta ;;
  }
  dimension: pago_exitoso {
    type: yesno
    sql: ${TABLE}.pago_exitoso ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
