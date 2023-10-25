view: desembolso_socialneed {
  sql_table_name: `socialneed-monolith-api-mx`.desembolso_socialneed ;;
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
  dimension: id_prestador_servicio {
    type: number
    sql: ${TABLE}.id_prestador_servicio ;;
  }
  dimension: monto_cobrado_prestador_servicio {
    type: number
    sql: ${TABLE}.monto_cobrado_prestador_servicio ;;
  }
  dimension: monto_comision {
    type: number
    sql: ${TABLE}.monto_comision ;;
  }
  dimension: monto_total {
    type: number
    sql: ${TABLE}.monto_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
