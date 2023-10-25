view: datos_vista_solicitud_aceptada {
  sql_table_name: `socialneed-monolith-api-mx`.datos_vista_solicitud_aceptada ;;
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
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: texto1 {
    type: string
    sql: ${TABLE}.texto1 ;;
  }
  dimension: texto2 {
    type: string
    sql: ${TABLE}.texto2 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
