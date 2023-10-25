view: recuperaciones_contrasenia {
  sql_table_name: `socialneed-monolith-api-mx`.recuperaciones_contrasenia ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_recuperacion {
    type: string
    sql: ${TABLE}.codigo_recuperacion ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
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
  dimension_group: fecha_limite_recuperacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_limite_recuperacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: tipo_usuario {
    type: number
    sql: ${TABLE}.tipo_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
