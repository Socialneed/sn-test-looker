view: empresa {
  sql_table_name: `socialneed-monolith-api-mx`.empresa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ayuda_cliente {
    type: string
    sql: ${TABLE}.ayuda_cliente ;;
  }
  dimension: ayuda_prestador {
    type: string
    sql: ${TABLE}.ayuda_prestador ;;
  }
  dimension: dias_permitidos_replica3 {
    type: number
    sql: ${TABLE}.dias_permitidos_replica3 ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: estado_id {
    type: number
    sql: ${TABLE}.estado_id ;;
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
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: politicas_cliente {
    type: string
    sql: ${TABLE}.politicas_cliente ;;
  }
  dimension: politicas_generales {
    type: string
    sql: ${TABLE}.politicas_generales ;;
  }
  dimension: politicas_prestador {
    type: string
    sql: ${TABLE}.politicas_prestador ;;
  }
  dimension: porcentaje_comision {
    type: number
    sql: ${TABLE}.porcentaje_comision ;;
  }
  dimension: responsable {
    type: number
    sql: ${TABLE}.responsable ;;
  }
  dimension: sugerencias_info_solicitud_servicio_prestador {
    type: string
    sql: ${TABLE}.sugerencias_info_solicitud_servicio_prestador ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: terminos_cliente {
    type: string
    sql: ${TABLE}.terminos_cliente ;;
  }
  dimension: terminos_generales {
    type: string
    sql: ${TABLE}.terminos_generales ;;
  }
  dimension: terminos_prestador {
    type: string
    sql: ${TABLE}.terminos_prestador ;;
  }
  dimension: texto_interrumpir_proceso_cliente {
    type: string
    sql: ${TABLE}.texto_interrumpir_proceso_cliente ;;
  }
  dimension: texto_notificacion_ha_llegado_al_sitio_cliente {
    type: string
    sql: ${TABLE}.texto_notificacion_ha_llegado_al_sitio_cliente ;;
  }
  dimension: texto_servicio_culminado_exito_cliente {
    type: string
    sql: ${TABLE}.texto_servicio_culminado_exito_cliente ;;
  }
  dimension: texto_suscito_un_problema_cliente {
    type: string
    sql: ${TABLE}.texto_suscito_un_problema_cliente ;;
  }
  dimension: url_codigo_invitacion_cliente {
    type: string
    sql: ${TABLE}.url_codigo_invitacion_cliente ;;
  }
  dimension: url_splash {
    type: string
    sql: ${TABLE}.url_splash ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
