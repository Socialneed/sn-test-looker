view: dia_disponible_prestador_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.dia_disponible_prestador_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: domingo {
    type: yesno
    sql: ${TABLE}.domingo ;;
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
  dimension: id_prestador_servicio {
    type: number
    sql: ${TABLE}.id_prestador_servicio ;;
  }
  dimension: jueves {
    type: yesno
    sql: ${TABLE}.jueves ;;
  }
  dimension: lunes {
    type: yesno
    sql: ${TABLE}.lunes ;;
  }
  dimension: martes {
    type: yesno
    sql: ${TABLE}.martes ;;
  }
  dimension: miercoles {
    type: yesno
    sql: ${TABLE}.miercoles ;;
  }
  dimension: sabado {
    type: yesno
    sql: ${TABLE}.sabado ;;
  }
  dimension: viernes {
    type: yesno
    sql: ${TABLE}.viernes ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
