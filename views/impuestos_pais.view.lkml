view: impuestos_pais {
  sql_table_name: `socialneed-monolith-api-mx`.impuestos_pais ;;
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
  dimension: codigo_impuesto {
    type: string
    sql: ${TABLE}.codigo_impuesto ;;
  }
  dimension: codigo_pais {
    type: string
    sql: ${TABLE}.codigo_pais ;;
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
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: porcentaje_impuesto {
    type: number
    sql: ${TABLE}.porcentaje_impuesto ;;
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
