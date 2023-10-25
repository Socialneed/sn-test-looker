view: mensaje {
  sql_table_name: `socialneed-monolith-api-mx`.mensaje ;;
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
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_solicitud_servicio {
    type: number
    sql: ${TABLE}.id_solicitud_servicio ;;
  }
  dimension: id_usuario_emisor {
    type: number
    sql: ${TABLE}.id_usuario_emisor ;;
  }
  dimension: id_usuario_receptor {
    type: number
    sql: ${TABLE}.id_usuario_receptor ;;
  }
  dimension: texto {
    type: string
    sql: ${TABLE}.texto ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
