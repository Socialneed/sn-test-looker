view: solicitud_reembolso_cliente {
  sql_table_name: `socialneed-monolith-api-mx`.solicitud_reembolso_cliente ;;
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
  dimension: id_entidad_bancaria {
    type: number
    sql: ${TABLE}.id_entidad_bancaria ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_solicitud_servicio {
    type: number
    sql: ${TABLE}.id_solicitud_servicio ;;
  }
  dimension: id_tipo_cuenta {
    type: number
    sql: ${TABLE}.id_tipo_cuenta ;;
  }
  dimension: numero_cuenta {
    type: string
    sql: ${TABLE}.numero_cuenta ;;
  }
  dimension: tipo_reembolso {
    type: string
    sql: ${TABLE}.tipo_reembolso ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
