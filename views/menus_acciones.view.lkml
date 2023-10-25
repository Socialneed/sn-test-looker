view: menus_acciones {
  sql_table_name: `socialneed-monolith-api-mx`.menus_acciones ;;

  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
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
  dimension: idmenuaccion {
    type: number
    sql: ${TABLE}.idmenuaccion ;;
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
