view: notificaciones_popup_cliente {
  sql_table_name: `socialneed-monolith-api-mx`.notificaciones_popup_cliente ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: notificacion {
    type: yesno
    sql: ${TABLE}.notificacion ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: url_imagen {
    type: string
    sql: ${TABLE}.url_imagen ;;
  }
  dimension: vencimiento {
    type: string
    sql: ${TABLE}.vencimiento ;;
  }
  dimension: visto {
    type: yesno
    sql: ${TABLE}.visto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
