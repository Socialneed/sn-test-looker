view: perfiles {
  sql_table_name: `socialneed-monolith-api-mx`.perfiles ;;

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
  dimension: idperfil {
    type: number
    sql: ${TABLE}.idperfil ;;
  }
  dimension: perfil {
    type: string
    sql: ${TABLE}.perfil ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  measure: count {
    type: count
  }
}
