view: codigos_validacion {
  sql_table_name: `socialneed-monolith-api-mx`.codigos_validacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
