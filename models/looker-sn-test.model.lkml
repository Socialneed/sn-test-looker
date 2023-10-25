connection: "sn-l1"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker-sn-test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker-sn-test_default_datagroup

explore: alerta_web {}

explore: calificacion_cliente {}

explore: calificacion_prestador_servicio {}

explore: categoria {}

explore: cliente {}

explore: cliente_bloqueo_prestador {}

explore: cliente_denuncia_prestador {}

explore: cliente_suspendido {}

explore: codigos_validacion {}

explore: codigos_verificacion_cliente {}

explore: cuentas_bancaria_prestador_servicio {}

explore: datos_vista_solicitud_aceptada {}

explore: desembolso_socialneed {}

explore: desembolso_solicitud_servicio {}

explore: dia_disponible_prestador_servicio {}

explore: empresa {}

explore: entidades_bancarias {}

explore: estado_registro {}

explore: favoritos_prestadores_servicio {}

explore: formulario_servicio {}

explore: formulario_servicio_detalle {
  join: formulario_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_detalle.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }
}

explore: formulario_servicio_respuesta {
  join: formulario_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: prestador_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }

  join: subcategoria {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.subcategoria_id} = ${subcategoria.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

explore: formulario_servicio_respuesta_detalle {
  join: formulario_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio_respuesta {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_respuesta_id} = ${formulario_servicio_respuesta.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio_detalle {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_detalle_id} = ${formulario_servicio_detalle.id} ;;
    relationship: many_to_one
  }

  join: prestador_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }

  join: subcategoria {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.subcategoria_id} = ${subcategoria.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

explore: horario_disponible_prestador_servicio {}

explore: horarios_disponibles {}

explore: impuestos_pais {}

explore: incumplimiento {}

explore: inicio_sesion {}

explore: inicio_sesion_cliente {}

explore: log_pago_solicitud_servicio {}

explore: mejorar {}

explore: mejorar_prestador_servicio {}

explore: mensaje {}

explore: menus {}

explore: menus_acciones {}

explore: menus_acciones_perfiles {}

explore: metodo_pago {
  join: users {
    type: left_outer 
    sql_on: ${metodo_pago.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: notificaciones_popup_cliente {}

explore: notificaciones_popup_prestador_servicio {}

explore: notificaciones_prestador_servicio {}

explore: notificaciones_push_cliente {}

explore: notificaciones_push_prestador_servicio {}

explore: opciones_tarea_inconclusa {}

explore: parametrizaciones {}

explore: pasarelas_pago {}

explore: perfiles {}

explore: prestador_bloqueo_cliente {}

explore: prestador_servicio {}

explore: prestador_suspendido {}

explore: programacion_notificaciones_cliente {}

explore: reconocimiento {}

explore: reconocimiento_prestador_servicio {}

explore: recuperaciones_contrasenia {}

explore: reglas_formulario_servicio {}

explore: reglas_formulario_servicio_acciones {}

explore: reglas_formulario_servicio_condiciones {}

explore: solicitud_activacion_subcategoria_prestador {
  join: prestador_servicio {
    type: left_outer 
    sql_on: ${solicitud_activacion_subcategoria_prestador.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }

  join: subcategoria {
    type: left_outer 
    sql_on: ${solicitud_activacion_subcategoria_prestador.subcategoria_id} = ${subcategoria.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio_respuesta {
    type: left_outer 
    sql_on: ${solicitud_activacion_subcategoria_prestador.formulario_servicio_respuesta_id} = ${formulario_servicio_respuesta.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio {
    type: left_outer 
    sql_on: ${subcategoria.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_cambio_informacion {}

explore: solicitud_reembolso_cliente {}

explore: solicitud_servicio {}

explore: stripe_customers {
  join: users {
    type: left_outer 
    sql_on: ${stripe_customers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: stripe_payments_intents {
  join: solicitud_servicio {
    type: left_outer 
    sql_on: ${stripe_payments_intents.solicitud_servicio_id} = ${solicitud_servicio.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${stripe_payments_intents.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: subcategoria {
  join: formulario_servicio {
    type: left_outer 
    sql_on: ${subcategoria.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

explore: tareas_basicas {}

explore: tareas_basicas_preguntas {}

explore: tareas_basicas_respuestas {
  join: prestador_servicio {
    type: left_outer 
    sql_on: ${tareas_basicas_respuestas.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }
}

explore: tipos_cuenta_bancaria {}

explore: tracking_prestador_servicio {
  join: prestador_servicio {
    type: left_outer 
    sql_on: ${tracking_prestador_servicio.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }
}

explore: unidad_medida_subcategoria {
  join: subcategoria {
    type: left_outer 
    sql_on: ${unidad_medida_subcategoria.subcategoria_id} = ${subcategoria.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio {
    type: left_outer 
    sql_on: ${subcategoria.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: usuario_dispositivo {}

explore: verificacion_certificado {
  join: formulario_servicio_respuesta_detalle {
    type: left_outer 
    sql_on: ${verificacion_certificado.formulario_servicio_respuesta_detalle_id} = ${formulario_servicio_respuesta_detalle.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_id} = ${formulario_servicio.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio_respuesta {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_respuesta_id} = ${formulario_servicio_respuesta.id} ;;
    relationship: many_to_one
  }

  join: formulario_servicio_detalle {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta_detalle.formulario_servicio_detalle_id} = ${formulario_servicio_detalle.id} ;;
    relationship: many_to_one
  }

  join: prestador_servicio {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.prestador_servicio_id} = ${prestador_servicio.id} ;;
    relationship: many_to_one
  }

  join: subcategoria {
    type: left_outer 
    sql_on: ${formulario_servicio_respuesta.subcategoria_id} = ${subcategoria.id} ;;
    relationship: many_to_one
  }

  join: categoria {
    type: left_outer 
    sql_on: ${subcategoria.categoria_id} = ${categoria.id} ;;
    relationship: many_to_one
  }
}

