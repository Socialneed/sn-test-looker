view: horarios_disponibles {
  sql_table_name: `socialneed-monolith-api-mx`.horarios_disponibles ;;
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
  dimension: hora_fin {
    type: string
    sql: ${TABLE}.hora_fin ;;
  }
  dimension: hora_inicio {
    type: string
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
