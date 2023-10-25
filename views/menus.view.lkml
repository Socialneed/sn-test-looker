view: menus {
  sql_table_name: `socialneed-monolith-api-mx`.menus ;;

  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
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
  dimension: idmenu {
    type: number
    sql: ${TABLE}.idmenu ;;
  }
  dimension: imagen {
    type: string
    sql: ${TABLE}.imagen ;;
  }
  dimension: menu {
    type: string
    sql: ${TABLE}.menu ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: padre {
    type: number
    sql: ${TABLE}.padre ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  measure: count {
    type: count
  }
}
