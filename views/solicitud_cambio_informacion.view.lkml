view: solicitud_cambio_informacion {
  sql_table_name: `socialneed-monolith-api-mx`.solicitud_cambio_informacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
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
  dimension: fecha_nacimiento {
    type: string
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_prestador {
    type: number
    sql: ${TABLE}.id_prestador ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: numero_cedula {
    type: string
    sql: ${TABLE}.numero_cedula ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
