view: prestador_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.prestador_servicio ;;
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
  dimension: calificacion_promedio {
    type: number
    sql: ${TABLE}.calificacion_promedio ;;
  }
  dimension: codigo_usuario {
    type: string
    sql: ${TABLE}.codigo_usuario ;;
  }
  dimension: codigo_verificador {
    type: string
    sql: ${TABLE}.codigo_verificador ;;
  }
  dimension: contrasenia {
    type: string
    sql: ${TABLE}.contrasenia ;;
  }
  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correo_electronico ;;
  }
  dimension: dia_verificacion {
    type: string
    sql: ${TABLE}.dia_verificacion ;;
  }
  dimension: es_contribuyente {
    type: yesno
    sql: ${TABLE}.es_contribuyente ;;
  }
  dimension_group: fecha_actualizacion_categorias {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion_categorias ;;
  }
  dimension_group: fecha_actualizacion_formularios {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion_formularios ;;
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
  dimension_group: fecha_modificacion_ult_ubicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion_ult_ubicacion ;;
  }
  dimension: fecha_nacimiento {
    type: string
    sql: ${TABLE}.fecha_nacimiento ;;
  }
  dimension: foto {
    type: string
    sql: ${TABLE}.foto ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }
  dimension: id_banco {
    type: number
    sql: ${TABLE}.id_banco ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: licencia {
    type: string
    sql: ${TABLE}.licencia ;;
  }
  dimension: localizacion_geocodificada {
    type: string
    sql: ${TABLE}.localizacion_geocodificada ;;
  }
  dimension: nombres {
    type: string
    sql: ${TABLE}.nombres ;;
  }
  dimension: numero_bancario {
    type: string
    sql: ${TABLE}.numero_bancario ;;
  }
  dimension: numero_cedula {
    type: string
    sql: ${TABLE}.numero_cedula ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: ult_latitud {
    type: string
    sql: ${TABLE}.ult_latitud ;;
  }
  dimension: ult_longitud {
    type: string
    sql: ${TABLE}.ult_longitud ;;
  }
  dimension: url_video {
    type: string
    sql: ${TABLE}.url_video ;;
  }
  dimension: verificador {
    type: string
    sql: ${TABLE}.verificador ;;
  }
  measure: count {
    type: count
    drill_fields: [id, formulario_servicio_respuesta.count, solicitud_activacion_subcategoria_prestador.count, tareas_basicas_respuestas.count, tracking_prestador_servicio.count]
  }
}
