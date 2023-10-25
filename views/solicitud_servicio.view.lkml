view: solicitud_servicio {
  sql_table_name: `socialneed-monolith-api-mx`.solicitud_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cambio_duracion {
    type: yesno
    sql: ${TABLE}.cambio_duracion ;;
  }
  dimension: cambio_fecha {
    type: yesno
    sql: ${TABLE}.cambio_fecha ;;
  }
  dimension: cambio_hora {
    type: yesno
    sql: ${TABLE}.cambio_hora ;;
  }
  dimension: cantidad_horas {
    type: number
    sql: ${TABLE}.cantidad_horas ;;
  }
  dimension: culminacion_exitosa_cliente {
    type: yesno
    sql: ${TABLE}.culminacion_exitosa_cliente ;;
  }
  dimension: culminacion_exitosa_prestador_servicio {
    type: yesno
    sql: ${TABLE}.culminacion_exitosa_prestador_servicio ;;
  }
  dimension: datos_extras {
    type: string
    sql: ${TABLE}.datos_extras ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
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
  dimension: id_categoria {
    type: number
    sql: ${TABLE}.id_categoria ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_estado {
    type: number
    sql: ${TABLE}.id_estado ;;
  }
  dimension: id_metodo_pago {
    type: number
    sql: ${TABLE}.id_metodo_pago ;;
  }
  dimension: id_metodo_pago_stripe {
    type: string
    sql: ${TABLE}.id_metodo_pago_stripe ;;
  }
  dimension: id_prestador_servicio {
    type: number
    sql: ${TABLE}.id_prestador_servicio ;;
  }
  dimension: id_subcategoria {
    type: number
    sql: ${TABLE}.id_subcategoria ;;
  }
  dimension: latitud {
    type: string
    sql: ${TABLE}.latitud ;;
  }
  dimension: latitud_cliente {
    type: string
    sql: ${TABLE}.latitud_cliente ;;
  }
  dimension: latitud_prestador_servicio {
    type: string
    sql: ${TABLE}.latitud_prestador_servicio ;;
  }
  dimension: longitud {
    type: string
    sql: ${TABLE}.longitud ;;
  }
  dimension: longitud_cliente {
    type: string
    sql: ${TABLE}.longitud_cliente ;;
  }
  dimension: longitud_prestador_servicio {
    type: string
    sql: ${TABLE}.longitud_prestador_servicio ;;
  }
  dimension: modo_servicio {
    type: string
    sql: ${TABLE}.modo_servicio ;;
  }
  dimension: porcentaje_comision {
    type: number
    sql: ${TABLE}.porcentaje_comision ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }
  dimension: sala_socialneed_video {
    type: string
    sql: ${TABLE}.sala_socialneed_video ;;
  }
  dimension: servicio_pagado {
    type: yesno
    sql: ${TABLE}.servicio_pagado ;;
  }
  dimension: tipo_servicio {
    type: string
    sql: ${TABLE}.tipo_servicio ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: valor_impuesto {
    type: number
    sql: ${TABLE}.valor_impuesto ;;
  }
  dimension: valor_por_hora {
    type: number
    sql: ${TABLE}.valor_por_hora ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id, stripe_payments_intents.count]
  }
}
