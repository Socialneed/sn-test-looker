view: pasarelas_pago {
  sql_table_name: `socialneed-monolith-api-mx`.pasarelas_pago ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: base_url {
    type: string
    sql: ${TABLE}.base_url ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: entorno {
    type: string
    sql: ${TABLE}.entorno ;;
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
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
