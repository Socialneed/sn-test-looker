view: unidad_medida_subcategoria {
  sql_table_name: `socialneed-monolith-api-mx`.unidad_medida_subcategoria ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: latitud {
    type: string
    sql: ${TABLE}.latitud ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: subcategoria_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.subcategoria_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, subcategoria.id]
  }
}
