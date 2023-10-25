view: cliente {
  sql_table_name: `socialneed-monolith-api-mx`.cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: apellidos {
    type: string
    sql: ${TABLE}.apellidos ;;
  }
  dimension: codigo_tarjeta {
    type: string
    sql: ${TABLE}.codigo_tarjeta ;;
  }
  dimension: contrasenia {
    type: string
    sql: ${TABLE}.contrasenia ;;
  }
  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correo_electronico ;;
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
  dimension: fecha_tarjeta {
    type: string
    sql: ${TABLE}.fecha_tarjeta ;;
  }
  dimension: foto {
    type: string
    sql: ${TABLE}.foto ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: nombres {
    type: string
    sql: ${TABLE}.nombres ;;
  }
  dimension: numero_tarjeta {
    type: string
    sql: ${TABLE}.numero_tarjeta ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
