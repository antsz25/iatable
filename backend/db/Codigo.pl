%Mapeo de iconos del tablero por causas de mal funcionamiento
causas([
    ( 'r1 ',luz_carretera_encendida,"Luz de carretera encendida."),
    ( 'r2 ',luz_circulacion_diurna_activa,"Luz de circulación diurna activada."),
    ( 'r3 ',intermitente_derecho_activo,"Intermitente derecho encendido."),
    ( 'r4 ',intermitente_izquierdo_activo,"Intermitente izquierdo encendido."),
    ( 'r5 ',motor_activo,"Motor en marcha."),
    ( 'r6 ',regulador_velocidad_activo,"Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo."),
    ( 'r7 ',falla_ABS,"El ABS no funciona correctamente."),
    ( 'r8 ',falla_Airbags,"Avería en el sistema de airbags y pretensores de los cinturones."),
    ( 'r9 ',tanque_limpiacristales_bajo,"Nivel del tanque de lava cristales bajo."),
    ( 'r10 ',nivel_aceite_bajo,"Nivel de aceite insuficiente. "),
    ( 'r11 ',fallo_alumbrado_vehiculos,"Fallo en el alumbrado del vehículo."),
    ( 'r12 ',presion_neumaticos_baja,"Presión de inflado de los neumáticos demasiado baja."),
    ( 'r13 ',falla_catalizador,"Avería en el catalizador."),
    ( 'r14 ',desgaste_pastilla_freno_delantera,"Pastillas de freno delanteras desgastadas."),
    ( 'r15 ',deposito_combustible_vacio,"Depósito de combustible casi vacío."),
    ( 'r16 ',precalentamiento_motor_diesel,"Precalentamiento del motor diesel."),
    ( 'r17 ',cinturon_desabrochado,"Cinturón de seguridad desabrochado."),
    ( 'r18 ',cajuela_abierta,"Cajuela abierta."),
    ( 'r19 ',puerta_abierta,"Puerta abierta."),
    ( 'r20 ',sobrecalentamiento_dsg,"Cambio de doble embrague DSG sobrecalentado."),
    ( 'r21 ',falla_bateria,"Falla de batería."),
    ( 'r22 ',falla_direccion_asistida,"Falla de la dirección asistida electromecánica."),
    ( 'r23 ',acc_inactivo,"Control de crucero adaptativo (ACC) no disponible."),
    ( 'r24 ',freno_mano_activo,"Freno de mano puesto."),
    ( 'r25 ',falla_o_baja_nivel_aceite_motor,"Nivel de aceite del motor bajo o avería en el sistema de aceite del motor."),
    ( 'r26 ',asr_inactivo,"ASR desconectado manualmente."),
    ( 'r27 ',filtro_diesel_saturado,"Filtro de partículas diesel saturado de hollín."),
    ( 'r28 ',averia_cambio_automatico,"Avería en el cambio automático."),
    ( 'r29 ',estado_bateria_movil,"Estado de carga de la batería móvil."),
    ( 'r30 ',regimen_motor_limitado,"Régimen del motor limitado."),
    ( 'r31 ',falla_sistema_hibrido,"Avería en el sistema híbrido."),
    ( 'r32 ',acc_activo_con_vehiculo,"ACC activo. Vehículo por delante."),
    ( 'r33 ',luz_trasera_antiniebla_activa,"Luz trasera antiniebla encendida."),
    ( 'r34 ',tapon_deposito_combustible_abierto,"Tapón del depósito de combustible abierto."),
    ( 'r35 ',acc_activo_sin_vehiculo,"ACC activo. Ningún vehículo por delante."),
    ( 'r36 ',asistente_luz_carretera_activo,"Asistente de luz de carretera conectado."),
    ( 'r37 ',sistema_start_stop_disponible,"Sistema Start-Stop disponible."),
    ( 'r38 ',preaviso_servicio,"Preaviso de servicio."),
    ( 'r39 ',motor_activo,"Motor en marcha."),
    ( 'r40 ',temperatura_inferior_4c,"Temperatura exterior inferior a +4º C.")
]).
% Regla para determinar la causa de un mal funcionamiento
causa_mal_funcionamiento_para_icono(Icono, Causa) :-
    causas(ListaCausas),
    member((Icono, Causa, _), ListaCausas).
    
% Regla para imprimir el mensaje de la causa de mal funcionamiento
imprimir_causa_mal_funcionamiento(Icono) :-
    causas(ListaCausas),
    member((Icono, _, Mensaje), ListaCausas),
    write(Mensaje),
    nl.
