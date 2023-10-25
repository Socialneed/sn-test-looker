view: tareas_basicas_preguntas {
  sql_table_name: `socialneed-monolith-api-mx`.tareas_basicas_preguntas ;;
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
  dimension: informacion {
    type: string
    sql: ${TABLE}.informacion ;;
  }
  dimension: preguntas {
    type: string
    sql: ${TABLE}.preguntas ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
