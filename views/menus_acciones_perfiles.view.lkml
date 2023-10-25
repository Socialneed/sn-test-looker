view: menus_acciones_perfiles {
  sql_table_name: `socialneed-monolith-api-mx`.menus_acciones_perfiles ;;
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
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: idmenuaccion {
    type: number
    sql: ${TABLE}.idmenuaccion ;;
  }
  dimension: idperfil {
    type: number
    sql: ${TABLE}.idperfil ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
