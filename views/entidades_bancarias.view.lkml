view: entidades_bancarias {
  sql_table_name: `socialneed-monolith-api-mx`.entidades_bancarias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_pais {
    type: string
    sql: ${TABLE}.codigo_pais ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
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
  dimension: nombre_entidad {
    type: string
    sql: ${TABLE}.nombre_entidad ;;
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
