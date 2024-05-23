% Mapeo de iconos del tablero por causas de mal funcionamiento
causas([
    ( 'r1 ', luz_carretera_encendida, "Luz de carretera encendida."),
    ( 'r2 ', luz_circulacion_diurna_activa, "Luz de circulación diurna activada."),
    ( 'r3 ', intermitente_derecho_activo, "Intermitente derecho encendido."),
    ( 'r4 ', intermitente_izquierdo_activo, "Intermitente izquierdo encendido."),
    ( 'r5 ', motor_activo, "Motor en marcha."),
    ( 'r6 ', regulador_velocidad_activo, "Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo."),
    ( 'r7 ', falla_abs, "El ABS no funciona correctamente."),
    ( 'r8 ', falla_airbags, "Avería en el sistema de airbags y pretensores de los cinturones."),
    ( 'r9 ', tanque_limpiacristales_bajo, "Nivel del tanque de lava cristales bajo."),
    ( 'r10 ', nivel_aceite_bajo, "Nivel de aceite insuficiente."),
    ( 'r11 ', falla_esc, "Avería en el ESC."),
    ( 'r12 ', fallo_alumbrado_vehiculo, "Fallo en el alumbrado del vehículo."),
    ( 'r13 ', presion_neumaticos_baja, "Presión de inflado de los neumáticos demasiado baja."),
    ( 'r14 ', falla_catalizador, "Avería en el catalizador."),
    ( 'r15 ', desgaste_pastilla_freno_delantera, "Pastillas de freno delanteras desgastadas."),
    ( 'r16 ', deposito_combustible_vacio, "Depósito de combustible casi vacío."),
    ( 'r17 ', precalentamiento_motor_diesel, "Precalentamiento del motor diesel."),
    ( 'r18 ', cinturon_desabrochado, "Cinturón de seguridad desabrochado."),
    ( 'r19 ', cajuela_abierta, "Cajuela abierta."),
    ( 'r20 ', puerta_abierta, "Puerta abierta."),
    ( 'r21 ', sobrecalentamiento_dsg, "Cambio de doble embrague DSG sobrecalentado."),
    ( 'r22 ', falla_bateria, "Falla de batería."),
    ( 'r23 ', falla_direccion_asistida, "Falla de la dirección asistida electromecánica."),
    ( 'r24 ', acc_inactivo, "Control de crucero adaptativo (ACC) no disponible."),
    ( 'r25 ', freno_mano_activo, "Freno de mano puesto."),
    ( 'r26 ', falla_o_baja_nivel_aceite_motor, "Nivel de aceite del motor bajo o avería en el sistema de aceite del motor."),
    ( 'r27 ', filtro_diesel_saturado, "Filtro de partículas diesel saturado de hollín."),
    ( 'r28 ', averia_cambio_automatico, "Avería en el cambio automático."),
    ( 'r29 ', estado_bateria_movil, "Estado de carga de la batería móvil."),
    ( 'r30 ', regimen_motor_limitado, "Régimen del motor limitado."),
    ( 'r31 ', falla_sistema_hibrido, "Avería en el sistema híbrido."),
    ( 'r32 ', acc_activo_con_vehiculo, "ACC activo. Vehículo por delante."),
    ( 'r33 ', luz_trasera_antiniebla_activa, "Luz trasera antiniebla encendida."),
    ( 'r34 ', tapon_deposito_combustible_abierto, "Tapón del depósito de combustible abierto."),
    ( 'r35 ', acc_activo_sin_vehiculo, "ACC activo. Ningún vehículo por delante."),
    ( 'r36 ', asistente_luz_carretera_activo, "Asistente de luz de carretera conectado."),
    ( 'r37 ', sistema_start_stop_disponible, "Sistema Start-Stop disponible."),
    ( 'r38 ', preaviso_servicio, "Preaviso de servicio."),
    ( 'r39 ', motor_activo_diesel, "Motor en marcha con diesel."),
    ( 'r40 ', temperatura_inferior_4c, "Temperatura exterior inferior a +4º C.")
]).

% Reglas para determinar la causa de un mal funcionamiento basada en combinaciones de iconos
diagnostico([r1], "Luz de carretera encendida.").
diagnostico([r2], "Luz de circulación diurna activada.").
diagnostico([r3], "Intermitente derecho encendido.").
diagnostico([r4], "Intermitente izquierdo encendido.").
diagnostico([r5], "Motor en marcha.").
diagnostico([r6], "Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo.").
diagnostico([r7], "El ABS no funciona correctamente.").
diagnostico([r8], "Avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r9], "Nivel del tanque de lava cristales bajo.").
diagnostico([r10], "Nivel de aceite insuficiente.").
diagnostico([r11], "Avería en el ESC.").
diagnostico([r12], "Fallo en el alumbrado del vehículo.").
diagnostico([r13], "Presión de inflado de los neumáticos demasiado baja.").
diagnostico([r14], "Avería en el catalizador.").
diagnostico([r15], "Pastillas de freno delanteras desgastadas.").
diagnostico([r16], "Depósito de combustible casi vacío.").
diagnostico([r17], "Precalentamiento del motor diesel.").
diagnostico([r18], "Cinturón de seguridad desabrochado.").
diagnostico([r19], "Cajuela abierta.").
diagnostico([r20], "Puerta abierta.").
diagnostico([r21], "Cambio de doble embrague DSG sobrecalentado.").
diagnostico([r22], "Falla de batería.").
diagnostico([r23], "Falla de la dirección asistida electromecánica.").
diagnostico([r24], "Control de crucero adaptativo (ACC) no disponible.").
diagnostico([r25], "Freno de mano puesto.").
diagnostico([r26], "Nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r27], "Filtro de partículas diesel saturado de hollín.").
diagnostico([r28], "Avería en el cambio automático.").
diagnostico([r29], "Estado de carga de la batería móvil.").
diagnostico([r30], "Régimen del motor limitado.").
diagnostico([r31], "Avería en el sistema híbrido.").
diagnostico([r32], "ACC activo. Vehículo por delante.").
diagnostico([r33], "Luz trasera antiniebla encendida.").
diagnostico([r34], "Tapón del depósito de combustible abierto.").
diagnostico([r35], "ACC activo. Ningún vehículo por delante.").
diagnostico([r36], "Asistente de luz de carretera conectado.").
diagnostico([r37], "Sistema Start-Stop disponible.").
diagnostico([r38], "Preaviso de servicio.").
diagnostico([r39], "Motor en marcha.").
diagnostico([r40], "Temperatura exterior inferior a +4º C.").
diagnostico([r1, r2], "Luz de carretera encendida y luz de circulación diurna activada.").
diagnostico([r1, r3], "Luz de carretera encendida e intermitente derecho encendido.").
diagnostico([r1, r4], "Luz de carretera encendida e intermitente izquierdo encendido.").
diagnostico([r1, r5], "Luz de carretera encendida con motor en marcha.").
diagnostico([r1, r6], "Luz de carretera encendida con regulador de velocidad regulado.").
diagnostico([r1, r7], "Luz de carretera encendida con fallo en el ABS.").
diagnostico([r1, r8], "Luz de carretera encendida con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r1, r9], "Luz de carretera encendida con nivel del tanque de lava cristales bajo.").
diagnostico([r1, r10], "Luz de carretera encendida con nivel de aceite insuficiente.").
diagnostico([r1, r11], "Luz de carretera encendida con avería en el ESC.").
diagnostico([r1, r12], "Luz de carretera encendida con fallo en el alumbrado del vehículo.").
diagnostico([r1, r13], "Luz de carretera encendida con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r1, r14], "Luz de carretera encendida con avería en el catalizador.").
diagnostico([r1, r15], "Luz de carretera encendida con pastillas de freno delanteras desgastadas.").
diagnostico([r1, r16], "Luz de carretera encendida con depósito de combustible casi vacío.").
diagnostico([r1, r17], "Luz de carretera encendida con precalentamiento del motor diesel.").
diagnostico([r1, r18], "Luz de carretera encendida con cinturón de seguridad desabrochado.").
diagnostico([r1, r19], "Luz de carretera encendida con cajuela abierta.").
diagnostico([r1, r20], "Luz de carretera encendida con puerta abierta.").
diagnostico([r1, r21], "Luz de carretera encendida con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r1, r22], "Luz de carretera encendida con fallo de batería.").
diagnostico([r1, r23], "Luz de carretera encendida con fallo de la dirección asistida electromecánica.").
diagnostico([r1, r24], "Luz de carretera encendida con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r1, r25], "Luz de carretera encendida con freno de mano puesto.").
diagnostico([r1, r26], "Luz de carretera encendida con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r1, r27], "Luz de carretera encendida con filtro de partículas diesel saturado de hollín.").
diagnostico([r1, r28], "Luz de carretera encendida con avería en el cambio automático.").
diagnostico([r1, r29], "Luz de carretera encendida con estado de carga de la batería móvil.").
diagnostico([r1, r30], "Luz de carretera encendida con régimen del motor limitado.").	
diagnostico([r1, r31], "Luz de carretera encendida con avería en el sistema híbrido.").
diagnostico([r1, r32], "Luz de carretera encendida con ACC activo. Vehículo por delante.").
diagnostico([r1, r33], "Luz de carretera encendida con luz trasera antiniebla encendida.").
diagnostico([r1, r34], "Luz de carretera encendida con tapón del depósito de combustible abierto.").
diagnostico([r1, r35], "Luz de carretera encendida con ACC activo. Ningún vehículo por delante.").
diagnostico([r1, r36], "Luz de carretera encendida con asistente de luz de carretera conectado.").
diagnostico([r1, r37], "Luz de carretera encendida con sistema Start-Stop disponible.").
diagnostico([r1, r38], "Luz de carretera encendida con preaviso de servicio.").
diagnostico([r1, r39], "Luz de carretera encendida con motor en marcha.").
diagnostico([r1, r40], "Luz de carretera encendida con temperatura exterior inferior a +4º C.").
diagnostico([r2,r1], "Luz de circulación diurna activada y luz de carretera encendida.").
diagnostico([r2,r3], "Luz de circulación diurna activada e intermitente derecho encendido.").
diagnostico([r2,r4], "Luz de circulación diurna activada e intermitente izquierdo encendido.").
diagnostico([r2,r5], "Luz de circulación diurna activada con motor en marcha.").
diagnostico([r2,r6], "Luz de circulación diurna activada con regulador de velocidad regulado.").
diagnostico([r2,r7], "Luz de circulación diurna activada con fallo en el ABS.").
diagnostico([r2,r8], "Luz de circulación diurna activada con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r2,r9], "Luz de circulación diurna activada con nivel del tanque de lava cristales bajo.").
diagnostico([r2,r10], "Luz de circulación diurna activada con nivel de aceite insuficiente.").
diagnostico([r2,r11], "Luz de circulación diurna activada con avería en el ESC.").
diagnostico([r2,r12], "Luz de circulación diurna activada con fallo en el alumbrado del vehículo.").
diagnostico([r2,r13], "Luz de circulación diurna activada con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r2,r14], "Luz de circulación diurna activada con avería en el catalizador.").
diagnostico([r2,r15], "Luz de circulación diurna activada con pastillas de freno delanteras desgastadas.").
diagnostico([r2,r16], "Luz de circulación diurna activada con depósito de combustible casi vacío.").
diagnostico([r2,r17], "Luz de circulación diurna activada con precalentamiento del motor diesel.").
diagnostico([r2,r18], "Luz de circulación diurna activada con cinturón de seguridad desabrochado.").
diagnostico([r2,r19], "Luz de circulación diurna activada con cajuela abierta.").
diagnostico([r2,r20], "Luz de circulación diurna activada con puerta abierta.").
diagnostico([r2,r21], "Luz de circulación diurna activada con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r2,r22], "Luz de circulación diurna activada con fallo de batería.").
diagnostico([r2,r23], "Luz de circulación diurna activada con fallo de la dirección asistida electromecánica.").
diagnostico([r2,r24], "Luz de circulación diurna activada con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r2,r25], "Luz de circulación diurna activada con freno de mano puesto.").
diagnostico([r2,r26], "Luz de circulación diurna activada con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r2,r27], "Luz de circulación diurna activada con filtro de partículas diesel saturado de hollín.").
diagnostico([r2,r28], "Luz de circulación diurna activada con avería en el cambio automático.").
diagnostico([r2,r29], "Luz de circulación diurna activada con estado de carga de la batería móvil.").
diagnostico([r2,r30], "Luz de circulación diurna activada con régimen del motor limitado.").
diagnostico([r2,r31], "Luz de circulación diurna activada con avería en el sistema híbrido.").
diagnostico([r2,r32], "Luz de circulación diurna activada con ACC activo. Vehículo por delante.").
diagnostico([r2,r33], "Luz de circulación diurna activada con luz trasera antiniebla encendida.").
diagnostico([r2,r34], "Luz de circulación diurna activada con tapón del depósito de combustible abierto.").
diagnostico([r2,r35], "Luz de circulación diurna activada con ACC activo. Ningún vehículo por delante.").
diagnostico([r2,r36], "Luz de circulación diurna activada con asistente de luz de carretera conectado.").
diagnostico([r2,r37], "Luz de circulación diurna activada con sistema Start-Stop disponible.").
diagnostico([r2,r38], "Luz de circulación diurna activada con preaviso de servicio.").
diagnostico([r2,r39], "Luz de circulación diurna activada con motor en marcha.").
diagnostico([r2,r40], "Luz de circulación diurna activada con temperatura exterior inferior a +4º C.").
diagnostico([r3,r1], "Intermitente derecho encendido y luz de carretera encendida.").
diagnostico([r3,r2], "Intermitente derecho encendido e intermitente izquierdo encendido.").
diagnostico([r3,r4], "Boton de precaucion presionado. Intermitentes encendidos").
diagnostico([r3,r5], "Intermitente derecho encendido con motor en marcha.").
diagnostico([r3,r6], "Intermitente derecho encendido con regulador de velocidad regulado.").
diagnostico([r3,r7], "Intermitente derecho encendido con fallo en el ABS.").
diagnostico([r3,r8], "Intermitente derecho encendido con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r3,r9], "Intermitente derecho encendido con nivel del tanque de lava cristales bajo.").
diagnostico([r3,r10], "Intermitente derecho encendido con nivel de aceite insuficiente.").
diagnostico([r3,r11], "Intermitente derecho encendido con avería en el ESC.").
diagnostico([r3,r12], "Intermitente derecho encendido con fallo en el alumbrado del vehículo.").
diagnostico([r3,r13], "Intermitente derecho encendido con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r3,r14], "Intermitente derecho encendido con avería en el catalizador.").
diagnostico([r3,r15], "Intermitente derecho encendido con pastillas de freno delanteras desgastadas.").
diagnostico([r3,r16], "Intermitente derecho encendido con depósito de combustible casi vacío.").
diagnostico([r3,r17], "Intermitente derecho encendido con precalentamiento del motor diesel.").
diagnostico([r3,r18], "Intermitente derecho encendido con cinturón de seguridad desabrochado.").
diagnostico([r3,r19], "Intermitente derecho encendido con cajuela abierta.").
diagnostico([r3,r20], "Intermitente derecho encendido con puerta abierta.").
diagnostico([r3,r21], "Intermitente derecho encendido con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r3,r22], "Intermitente derecho encendido con fallo de batería.").
diagnostico([r3,r23], "Intermitente derecho encendido con fallo de la dirección asistida electromecánica.").
diagnostico([r3,r24], "Intermitente derecho encendido con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r3,r25], "Intermitente derecho encendido con freno de mano puesto.").
diagnostico([r3,r26], "Intermitente derecho encendido con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r3,r27], "Intermitente derecho encendido con filtro de partículas diesel saturado de hollín.").
diagnostico([r3,r28], "Intermitente derecho encendido con avería en el cambio automático.").
diagnostico([r3,r29], "Intermitente derecho encendido con estado de carga de la batería móvil.").
diagnostico([r3,r30], "Intermitente derecho encendido con régimen del motor limitado.").
diagnostico([r3,r31], "Intermitente derecho encendido con avería en el sistema híbrido.").
diagnostico([r3,r32], "Intermitente derecho encendido con ACC activo. Vehículo por delante.").
diagnostico([r3,r33], "Intermitente derecho encendido con luz trasera antiniebla encendida.").
diagnostico([r3,r34], "Intermitente derecho encendido con tapón del depósito de combustible abierto.").
diagnostico([r3,r35], "Intermitente derecho encendido con ACC activo. Ningún vehículo por delante.").
diagnostico([r3,r36], "Intermitente derecho encendido con asistente de luz de carretera conectado.").
diagnostico([r3,r37], "Intermitente derecho encendido con sistema Start-Stop disponible.").
diagnostico([r3,r38], "Intermitente derecho encendido con preaviso de servicio.").
diagnostico([r3,r39], "Intermitente derecho encendido con motor en marcha.").
diagnostico([r3,r40], "Intermitente derecho encendido con temperatura exterior inferior a +4º C.").
diagnostico([r4,r1], "Intermitente izquierdo encendido y luz de carretera encendida.").
diagnostico([r4,r2], "Intermitente izquierdo encendido e intermitente derecho encendido.").
diagnostico([r4,r3], "Boton de precaucion presionado. Intermitentes encendidos").
diagnostico([r4,r5], "Intermitente izquierdo encendido con motor en marcha.").
diagnostico([r4,r6], "Intermitente izquierdo encendido con regulador de velocidad regulado.").
diagnostico([r4,r7], "Intermitente izquierdo encendido con fallo en el ABS.").
diagnostico([r4,r8], "Intermitente izquierdo encendido con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r4,r9], "Intermitente izquierdo encendido con nivel del tanque de lava cristales bajo.").
diagnostico([r4,r10], "Intermitente izquierdo encendido con nivel de aceite insuficiente.").
diagnostico([r4,r11], "Intermitente izquierdo encendido con avería en el ESC.").
diagnostico([r4,r12], "Intermitente izquierdo encendido con fallo en el alumbrado del vehículo.").
diagnostico([r4,r13], "Intermitente izquierdo encendido con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r4,r14], "Intermitente izquierdo encendido con avería en el catalizador.").
diagnostico([r4,r15], "Intermitente izquierdo encendido con pastillas de freno delanteras desgastadas.").
diagnostico([r4,r16], "Intermitente izquierdo encendido con depósito de combustible casi vacío.").
diagnostico([r4,r17], "Intermitente izquierdo encendido con precalentamiento del motor diesel.").
diagnostico([r4,r18], "Intermitente izquierdo encendido con cinturón de seguridad desabrochado.").
diagnostico([r4,r19], "Intermitente izquierdo encendido con cajuela abierta.").
diagnostico([r4,r20], "Intermitente izquierdo encendido con puerta abierta.").
diagnostico([r4,r21], "Intermitente izquierdo encendido con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r4,r22], "Intermitente izquierdo encendido con fallo de batería.").
diagnostico([r4,r23], "Intermitente izquierdo encendido con fallo de la dirección asistida electromecánica.").
diagnostico([r4,r24], "Intermitente izquierdo encendido con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r4,r25], "Intermitente izquierdo encendido con freno de mano puesto.").
diagnostico([r4,r26], "Intermitente izquierdo encendido con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r4,r27], "Intermitente izquierdo encendido con filtro de partículas diesel saturado de hollín.").
diagnostico([r4,r28], "Intermitente izquierdo encendido con avería en el cambio automático.").
diagnostico([r4,r29], "Intermitente izquierdo encendido con estado de carga de la batería móvil.").
diagnostico([r4,r30], "Intermitente izquierdo encendido con régimen del motor limitado.").
diagnostico([r4,r31], "Intermitente izquierdo encendido con avería en el sistema híbrido.").
diagnostico([r4,r32], "Intermitente izquierdo encendido con ACC activo. Vehículo por delante.").
diagnostico([r4,r33], "Intermitente izquierdo encendido con luz trasera antiniebla encendida.").
diagnostico([r4,r34], "Intermitente izquierdo encendido con tapón del depósito de combustible abierto.").
diagnostico([r4,r35], "Intermitente izquierdo encendido con ACC activo. Ningún vehículo por delante.").
diagnostico([r4,r36], "Intermitente izquierdo encendido con asistente de luz de carretera conectado.").
diagnostico([r4,r37], "Intermitente izquierdo encendido con sistema Start-Stop disponible.").
diagnostico([r4,r38], "Intermitente izquierdo encendido con preaviso de servicio.").
diagnostico([r4,r39], "Intermitente izquierdo encendido con motor en marcha.").
diagnostico([r4,r40], "Intermitente izquierdo encendido con temperatura exterior inferior a +4º C.").
diagnostico([r5,r1], "Motor en marcha con luz de carretera encendida.").
diagnostico([r5,r2], "Motor en marcha con luz de circulación diurna activada.").
diagnostico([r5,r3], "Motor en marcha con intermitente derecho encendido.").
diagnostico([r5,r4], "Motor en marcha con intermitente izquierdo encendido.").
diagnostico([r5,r6], "Motor en marcha con regulador de velocidad regulado.").
diagnostico([r5,r7], "Motor en marcha con fallo en el ABS.").
diagnostico([r5,r8], "Motor en marcha con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r5,r9], "Motor en marcha con nivel del tanque de lava cristales bajo.").
diagnostico([r5,r10], "Motor en marcha con nivel de aceite insuficiente.").
diagnostico([r5,r11], "Motor en marcha con avería en el ESC.").
diagnostico([r5,r12], "Motor en marcha con fallo en el alumbrado del vehículo.").
diagnostico([r5,r13], "Motor en marcha con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r5,r14], "Motor en marcha con avería en el catalizador.").
diagnostico([r5,r15], "Motor en marcha con pastillas de freno delanteras desgastadas.").
diagnostico([r5,r16], "Motor en marcha con depósito de combustible casi vacío.").
diagnostico([r5,r17], "Motor en marcha con precalentamiento del motor diesel.").
diagnostico([r5,r18], "Motor en marcha con cinturón de seguridad desabrochado.").
diagnostico([r5,r19], "Motor en marcha con cajuela abierta.").
diagnostico([r5,r20], "Motor en marcha con puerta abierta.").
diagnostico([r5,r21], "Motor en marcha con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r5,r22], "Motor en marcha con fallo de batería.").
diagnostico([r5,r23], "Motor en marcha con fallo de la dirección asistida electromecánica.").
diagnostico([r5,r24], "Motor en marcha con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r5,r25], "Motor en marcha con freno de mano puesto.").
diagnostico([r5,r26], "Motor en marcha con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r5,r27], "Motor en marcha con filtro de partículas diesel saturado de hollín.").
diagnostico([r5,r28], "Motor en marcha con avería en el cambio automático.").
diagnostico([r5,r29], "Motor en marcha con estado de carga de la batería móvil.").
diagnostico([r5,r30], "Motor en marcha con régimen del motor limitado.").
diagnostico([r5,r31], "Motor en marcha con avería en el sistema híbrido.").
diagnostico([r5,r32], "Motor en marcha con ACC activo. Vehículo por delante.").
diagnostico([r5,r33], "Motor en marcha con luz trasera antiniebla encendida.").
diagnostico([r5,r34], "Motor en marcha con tapón del depósito de combustible abierto.").
diagnostico([r5,r35], "Motor en marcha con ACC activo. Ningún vehículo por delante.").
diagnostico([r5,r36], "Motor en marcha con asistente de luz de carretera conectado.").
diagnostico([r5,r37], "Motor en marcha con sistema Start-Stop disponible.").
diagnostico([r5,r38], "Motor en marcha con preaviso de servicio.").
diagnostico([r5,r39], "Motor en marcha con motor en marcha.").
diagnostico([r5,r40], "Motor en marcha con teléfono móvil conectado mediante Bluetooth.").
diagnostico([r5, r10, r13], "Motor en marcha con luz de aceite bajo encendida y presión de neumáticos baja.").
diagnostico([r5, r8, r11], "Motor en marcha con luz de airbag encendida y luz de ESC encendida.").
diagnostico([r5, r12, r15], "Motor en marcha con luz de fallo en el alumbrado encendida y luz de desgaste de frenos encendida.").
diagnostico([r5, r9, r2], "Motor en marcha con luz de nivel de lava cristales bajo encendida y luz de circulación diurna activada.").
diagnostico([r5, r14, r10], "Motor en marcha con luz de catalizador encendida y luz de nivel de aceite insuficiente encendida.").
diagnostico([r5, r22, r38], "Motor en marcha con fallo de batería y luz de preaviso de servicio encendida.").
diagnostico([r5, r28, r30], "Motor en marcha con avería en el cambio automático y régimen del motor limitado.").
diagnostico([r5, r31, r29], "Motor en marcha con avería en el sistema híbrido y luz de estado de carga de la batería móvil.").
diagnostico([r5, r40, r38], "Motor en marcha con luz de temperatura exterior inferior a +4º C y luz de preaviso de servicio.").
diagnostico([r5, r7, r10, r12], "Motor en marcha con ABS no funcionando correctamente, luz de nivel de aceite insuficiente y luz de fallo en el alumbrado encendida.").
diagnostico([r5, r21, r10, r40], "Motor en marcha con cambio de doble embrague DSG sobrecalentado, luz de nivel de aceite insuficiente y luz de temperatura exterior inferior a +4º C.").
diagnostico([r5, r23, r6], "Motor en marcha, luz de fallo en la dirección asistida electromecánica y regulador de velocidad regulado.").
diagnostico([r5, r16, r9, r10], "Motor en marcha con luz de depósito de combustible casi vacío, luz de nivel del tanque de lava cristales bajo y luz de nivel de aceite insuficiente.").
diagnostico([r5,r42], "Motor en marcha con temperatura exterior inferior a +4º C.").
diagnostico([r6,r1], "Regulador de velocidad regulado y luz de carretera encendida.").
diagnostico([r6,r2], "Regulador de velocidad regulado y luz de circulación diurna activada.").
diagnostico([r6,r3], "Regulador de velocidad regulado e intermitente derecho encendido.").
diagnostico([r6,r4], "Regulador de velocidad regulado e intermitente izquierdo encendido.").
diagnostico([r6,r5], "Regulador de velocidad regulado con motor en marcha.").
diagnostico([r6,r7], "Regulador de velocidad regulado con fallo en el ABS.").
diagnostico([r6,r8], "Regulador de velocidad regulado con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r6,r9], "Regulador de velocidad regulado con nivel del tanque de lava cristales bajo.").
diagnostico([r6,r10], "Regulador de velocidad regulado con nivel de aceite insuficiente.").
diagnostico([r6,r11], "Regulador de velocidad regulado con avería en el ESC.").
diagnostico([r6,r12], "Regulador de velocidad regulado con fallo en el alumbrado del vehículo.").
diagnostico([r6,r13], "Regulador de velocidad regulado con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r6,r14], "Regulador de velocidad regulado con avería en el catalizador.").
diagnostico([r6,r15], "Regulador de velocidad regulado con pastillas de freno delanteras desgastadas.").
diagnostico([r6,r16], "Regulador de velocidad regulado con depósito de combustible casi vacío.").
diagnostico([r6,r17], "Regulador de velocidad regulado con precalentamiento del motor diesel.").
diagnostico([r6,r18], "Regulador de velocidad regulado con cinturón de seguridad desabrochado.").
diagnostico([r6,r19], "Regulador de velocidad regulado con cajuela abierta.").
diagnostico([r6,r20], "Regulador de velocidad regulado con puerta abierta.").
diagnostico([r6,r21], "Regulador de velocidad regulado con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r6,r22], "Regulador de velocidad regulado con fallo de batería.").
diagnostico([r6,r23], "Regulador de velocidad regulado con fallo de la dirección asistida electromecánica.").
diagnostico([r6,r24], "Regulador de velocidad regulado con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r6,r25], "Regulador de velocidad regulado con freno de mano puesto.").
diagnostico([r6,r26], "Regulador de velocidad regulado con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r6,r27], "Regulador de velocidad regulado con filtro de partículas diesel saturado de hollín.").
diagnostico([r6,r28], "Regulador de velocidad regulado con avería en el cambio automático.").
diagnostico([r6,r29], "Regulador de velocidad regulado con estado de carga de la batería móvil.").
diagnostico([r6,r30], "Regulador de velocidad regulado con régimen del motor limitado.").
diagnostico([r6,r31], "Regulador de velocidad regulado con avería en el sistema híbrido.").
diagnostico([r6,r32], "Regulador de velocidad regulado con ACC activo. Vehículo por delante.").
diagnostico([r6,r33], "Regulador de velocidad regulado con luz trasera antiniebla encendida.").
diagnostico([r6,r34], "Regulador de velocidad regulado con tapón del depósito de combustible abierto.").
diagnostico([r6,r35], "Regulador de velocidad regulado con ACC activo. Ningún vehículo por delante.").
diagnostico([r6,r36], "Regulador de velocidad regulado con asistente de luz de carretera conectado.").
diagnostico([r6,r37], "Regulador de velocidad regulado con sistema Start-Stop disponible.").
diagnostico([r6,r38], "Regulador de velocidad regulado con preaviso de servicio.").
diagnostico([r6,r39], "Regulador de velocidad regulado con motor en marcha.").
diagnostico([r6,r40], "Regulador de velocidad regulado con temperatura exterior inferior a +4º C.").
diagnostico([r7,r1], "Fallo en el ABS y luz de carretera encendida.").
diagnostico([r7,r2], "Fallo en el ABS y luz de circulación diurna activada.").
diagnostico([r7,r3], "Fallo en el ABS y intermitente derecho encendido.").
diagnostico([r7,r4], "Fallo en el ABS y intermitente izquierdo encendido.").
diagnostico([r7,r5], "Fallo en el ABS con motor en marcha.").
diagnostico([r7,r6], "Fallo en el ABS con regulador de velocidad regulado.").
diagnostico([r7,r8], "Fallo en el ABS con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r7,r9], "Fallo en el ABS con nivel del tanque de lava cristales bajo.").
diagnostico([r7,r10], "Fallo en el ABS con nivel de aceite insuficiente.").
diagnostico([r7,r11], "Fallo en el ABS con avería en el ESC.").
diagnostico([r7,r12], "Fallo en el ABS con fallo en el alumbrado del vehículo.").
diagnostico([r7,r13], "Fallo en el ABS con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r7,r14], "Fallo en el ABS con avería en el catalizador.").
diagnostico([r7,r15], "Fallo en el ABS con pastillas de freno delanteras desgastadas.").
diagnostico([r7,r16], "Fallo en el ABS con depósito de combustible casi vacío.").
diagnostico([r7,r17], "Fallo en el ABS con precalentamiento del motor diesel.").
diagnostico([r7,r18], "Fallo en el ABS con cinturón de seguridad desabrochado.").
diagnostico([r7,r19], "Fallo en el ABS con cajuela abierta.").
diagnostico([r7,r20], "Fallo en el ABS con puerta abierta.").
diagnostico([r7,r21], "Fallo en el ABS con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r7,r22], "Fallo en el ABS con fallo de batería.").
diagnostico([r7,r23], "Fallo en el ABS con fallo de la dirección asistida electromecánica.").
diagnostico([r7,r24], "Fallo en el ABS con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r7,r25], "Fallo en el ABS con freno de mano puesto.").
diagnostico([r7,r26], "Fallo en el ABS con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r7,r27], "Fallo en el ABS con filtro de partículas diesel saturado de hollín.").
diagnostico([r7,r28], "Fallo en el ABS con avería en el cambio automático.").
diagnostico([r7,r29], "Fallo en el ABS con estado de carga de la batería móvil.").
diagnostico([r7,r30], "Fallo en el ABS con régimen del motor limitado.").
diagnostico([r7,r31], "Fallo en el ABS con avería en el sistema híbrido.").
diagnostico([r7,r32], "Fallo en el ABS con ACC activo. Vehículo por delante.").
diagnostico([r7,r33], "Fallo en el ABS con luz trasera antiniebla encendida.").
diagnostico([r7,r34], "Fallo en el ABS con tapón del depósito de combustible abierto.").
diagnostico([r7,r35], "Fallo en el ABS con ACC activo. Ningún vehículo por delante.").
diagnostico([r7,r36], "Fallo en el ABS con asistente de luz de carretera conectado.").
diagnostico([r7,r37], "Fallo en el ABS con sistema Start-Stop disponible.").
diagnostico([r7,r38], "Fallo en el ABS con preaviso de servicio.").
diagnostico([r7,r39], "Fallo en el ABS con motor en marcha.").
diagnostico([r7,r40], "Fallo en el ABS con temperatura exterior inferior a +4º C.").
diagnostico([r8,r1], "Avería en el sistema de airbags y pretensores de los cinturones y luz de carretera encendida.").
diagnostico([r8,r2], "Avería en el sistema de airbags y pretensores de los cinturones y luz de circulación diurna activada.").
diagnostico([r8,r3], "Avería en el sistema de airbags y pretensores de los cinturones e intermitente derecho encendido.").
diagnostico([r8,r4], "Avería en el sistema de airbags y pretensores de los cinturones e intermitente izquierdo encendido.").
diagnostico([r8,r5], "Avería en el sistema de airbags y pretensores de los cinturones con motor en marcha.").
diagnostico([r8,r6], "Avería en el sistema de airbags y pretensores de los cinturones con regulador de velocidad regulado.").
diagnostico([r8,r7], "Avería en el sistema de airbags y pretensores de los cinturones con fallo en el ABS.").
diagnostico([r8,r9], "Avería en el sistema de airbags y pretensores de los cinturones con nivel del tanque de lava cristales bajo.").
diagnostico([r8,r10], "Avería en el sistema de airbags y pretensores de los cinturones con nivel de aceite insuficiente.").
diagnostico([r8,r11], "Avería en el sistema de airbags y pretensores de los cinturones con avería en el ESC.").
diagnostico([r8,r12], "Avería en el sistema de airbags y pretensores de los cinturones con fallo en el alumbrado del vehículo.").
diagnostico([r8,r13], "Avería en el sistema de airbags y pretensores de los cinturones con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r8,r14], "Avería en el sistema de airbags y pretensores de los cinturones con avería en el catalizador.").
diagnostico([r8,r15], "Avería en el sistema de airbags y pretensores de los cinturones con pastillas de freno delanteras desgastadas.").
diagnostico([r8,r16], "Avería en el sistema de airbags y pretensores de los cinturones con depósito de combustible casi vacío.").
diagnostico([r8,r17], "Avería en el sistema de airbags y pretensores de los cinturones con precalentamiento del motor diesel.").
diagnostico([r8,r18], "Avería en el sistema de airbags y pretensores de los cinturones con cinturón de seguridad desabrochado.").
diagnostico([r8,r19], "Avería en el sistema de airbags y pretensores de los cinturones con cajuela abierta.").
diagnostico([r8,r20], "Avería en el sistema de airbags y pretensores de los cinturones con puerta abierta.").
diagnostico([r8,r21], "Avería en el sistema de airbags y pretensores de los cinturones con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r8,r22], "Avería en el sistema de airbags y pretensores de los cinturones con fallo de batería.").
diagnostico([r8,r23], "Avería en el sistema de airbags y pretensores de los cinturones con fallo de la dirección asistida electromecánica.").
diagnostico([r8,r24], "Avería en el sistema de airbags y pretensores de los cinturones con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r8,r25], "Avería en el sistema de airbags y pretensores de los cinturones con freno de mano puesto.").
diagnostico([r8,r26], "Avería en el sistema de airbags y pretensores de los cinturones con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r8,r27], "Avería en el sistema de airbags y pretensores de los cinturones con filtro de partículas diesel saturado de hollín.").
diagnostico([r8,r28], "Avería en el sistema de airbags y pretensores de los cinturones con avería en el cambio automático.").
diagnostico([r8,r29], "Avería en el sistema de airbags y pretensores de los cinturones con estado de carga de la batería móvil.").
diagnostico([r8,r30], "Avería en el sistema de airbags y pretensores de los cinturones con régimen del motor limitado.").
diagnostico([r8,r31], "Avería en el sistema de airbags y pretensores de los cinturones con avería en el sistema híbrido.").
diagnostico([r8,r32], "Avería en el sistema de airbags y pretensores de los cinturones con ACC activo. Vehículo por delante.").
diagnostico([r8,r33], "Avería en el sistema de airbags y pretensores de los cinturones con luz trasera antiniebla encendida.").
diagnostico([r8,r34], "Avería en el sistema de airbags y pretensores de los cinturones con tapón del depósito de combustible abierto.").
diagnostico([r8,r35], "Avería en el sistema de airbags y pretensores de los cinturones con ACC activo. Ningún vehículo por delante.").
diagnostico([r8,r36], "Avería en el sistema de airbags y pretensores de los cinturones con asistente de luz de carretera conectado.").
diagnostico([r8,r37], "Avería en el sistema de airbags y pretensores de los cinturones con sistema Start-Stop disponible.").
diagnostico([r8,r38], "Avería en el sistema de airbags y pretensores de los cinturones con preaviso de servicio.").
diagnostico([r8,r39], "Avería en el sistema de airbags y pretensores de los cinturones con motor en marcha.").
diagnostico([r8,r40], "Avería en el sistema de airbags y pretensores de los cinturones con temperatura exterior inferior a +4º C.").
diagnostico([r9,r1], "Nivel del tanque de lava cristales bajo y luz de carretera encendida.").
diagnostico([r9,r2], "Nivel del tanque de lava cristales bajo y luz de circulación diurna activada.").
diagnostico([r9,r3], "Nivel del tanque de lava cristales bajo e intermitente derecho encendido.").
diagnostico([r9,r4], "Nivel del tanque de lava cristales bajo e intermitente izquierdo encendido.").
diagnostico([r9,r5], "Nivel del tanque de lava cristales bajo con motor en marcha.").
diagnostico([r9,r6], "Nivel del tanque de lava cristales bajo con regulador de velocidad regulado.").
diagnostico([r9,r7], "Nivel del tanque de lava cristales bajo con fallo en el ABS.").
diagnostico([r9,r8], "Nivel del tanque de lava cristales bajo con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r9,r10], "Nivel del tanque de lava cristales bajo con nivel de aceite insuficiente.").
diagnostico([r9,r11], "Nivel del tanque de lava cristales bajo con avería en el ESC.").
diagnostico([r9,r12], "Nivel del tanque de lava cristales bajo con fallo en el alumbrado del vehículo.").
diagnostico([r9,r13], "Nivel del tanque de lava cristales bajo con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r9,r14], "Nivel del tanque de lava cristales bajo con avería en el catalizador.").
diagnostico([r9,r15], "Nivel del tanque de lava cristales bajo con pastillas de freno delanteras desgastadas.").
diagnostico([r9,r16], "Nivel del tanque de lava cristales bajo con depósito de combustible casi vacío.").
diagnostico([r9,r17], "Nivel del tanque de lava cristales bajo con precalentamiento del motor diesel.").
diagnostico([r9,r18], "Nivel del tanque de lava cristales bajo con cinturón de seguridad desabrochado.").
diagnostico([r9,r19], "Nivel del tanque de lava cristales bajo con cajuela abierta.").
diagnostico([r9,r20], "Nivel del tanque de lava cristales bajo con puerta abierta.").
diagnostico([r9,r21], "Nivel del tanque de lava cristales bajo con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r9,r22], "Nivel del tanque de lava cristales bajo con fallo de batería.").
diagnostico([r9,r23], "Nivel del tanque de lava cristales bajo con fallo de la dirección asistida electromecánica.").
diagnostico([r9,r24], "Nivel del tanque de lava cristales bajo con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r9,r25], "Nivel del tanque de lava cristales bajo con freno de mano puesto.").
diagnostico([r9,r26], "Nivel del tanque de lava cristales bajo con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r9,r27], "Nivel del tanque de lava cristales bajo con filtro de partículas diesel saturado de hollín.").
diagnostico([r9,r28], "Nivel del tanque de lava cristales bajo con avería en el cambio automático.").
diagnostico([r9,r29], "Nivel del tanque de lava cristales bajo con estado de carga de la batería móvil.").
diagnostico([r9,r30], "Nivel del tanque de lava cristales bajo con régimen del motor limitado.").
diagnostico([r9,r31], "Nivel del tanque de lava cristales bajo con avería en el sistema híbrido.").
diagnostico([r9,r32], "Nivel del tanque de lava cristales bajo con ACC activo. Vehículo por delante.").
diagnostico([r9,r33], "Nivel del tanque de lava cristales bajo con luz trasera antiniebla encendida.").
diagnostico([r9,r34], "Nivel del tanque de lava cristales bajo con tapón del depósito de combustible abierto.").
diagnostico([r9,r35], "Nivel del tanque de lava cristales bajo con ACC activo. Ningún vehículo por delante.").
diagnostico([r9,r36], "Nivel del tanque de lava cristales bajo con asistente de luz de carretera conectado.").
diagnostico([r9,r37], "Nivel del tanque de lava cristales bajo con sistema Start-Stop disponible.").
diagnostico([r9,r38], "Nivel del tanque de lava cristales bajo con preaviso de servicio.").
diagnostico([r9,r39], "Nivel del tanque de lava cristales bajo con motor en marcha.").
diagnostico([r9,r40], "Nivel del tanque de lava cristales bajo con temperatura exterior inferior a +4º C.").
diagnostico([r10,r1], "Nivel de aceite insuficiente y luz de carretera encendida.").
diagnostico([r10,r2], "Nivel de aceite insuficiente y luz de circulación diurna activada.").
diagnostico([r10,r3], "Nivel de aceite insuficiente e intermitente derecho encendido.").
diagnostico([r10,r4], "Nivel de aceite insuficiente e intermitente izquierdo encendido.").
diagnostico([r10,r5], "Nivel de aceite insuficiente con motor en marcha.").
diagnostico([r10,r6], "Nivel de aceite insuficiente con regulador de velocidad regulado.").
diagnostico([r10,r7], "Nivel de aceite insuficiente con fallo en el ABS.").
diagnostico([r10,r8], "Nivel de aceite insuficiente con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r10,r9], "Nivel de aceite insuficiente con nivel del tanque de lava cristales bajo.").
diagnostico([r10,r11], "Nivel de aceite insuficiente con avería en el ESC.").
diagnostico([r10,r12], "Nivel de aceite insuficiente con fallo en el alumbrado del vehículo.").
diagnostico([r10,r13], "Nivel de aceite insuficiente con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r10,r14], "Nivel de aceite insuficiente con avería en el catalizador.").
diagnostico([r10,r15], "Nivel de aceite insuficiente con pastillas de freno delanteras desgastadas.").
diagnostico([r10,r16], "Nivel de aceite insuficiente con depósito de combustible casi vacío.").
diagnostico([r10,r17], "Nivel de aceite insuficiente con precalentamiento del motor diesel.").
diagnostico([r10,r18], "Nivel de aceite insuficiente con cinturón de seguridad desabrochado.").
diagnostico([r10,r19], "Nivel de aceite insuficiente con cajuela abierta.").
diagnostico([r10,r20], "Nivel de aceite insuficiente con puerta abierta.").
diagnostico([r10,r21], "Nivel de aceite insuficiente con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r10,r22], "Nivel de aceite insuficiente con fallo de batería.").
diagnostico([r10,r23], "Nivel de aceite insuficiente con fallo de la dirección asistida electromecánica.").
diagnostico([r10,r24], "Nivel de aceite insuficiente con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r10,r25], "Nivel de aceite insuficiente con freno de mano puesto.").
diagnostico([r10,r26], "Nivel de aceite insuficiente con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r10,r27], "Nivel de aceite insuficiente con filtro de partículas diesel saturado de hollín.").
diagnostico([r10,r28], "Nivel de aceite insuficiente con avería en el cambio automático.").
diagnostico([r10,r29], "Nivel de aceite insuficiente con estado de carga de la batería móvil.").
diagnostico([r10,r30], "Nivel de aceite insuficiente con régimen del motor limitado.").
diagnostico([r10,r31], "Nivel de aceite insuficiente con avería en el sistema híbrido.").
diagnostico([r10,r32], "Nivel de aceite insuficiente con ACC activo. Vehículo por delante.").
diagnostico([r10,r33], "Nivel de aceite insuficiente con luz trasera antiniebla encendida.").
diagnostico([r10,r34], "Nivel de aceite insuficiente con tapón del depósito de combustible abierto.").
diagnostico([r10,r35], "Nivel de aceite insuficiente con ACC activo. Ningún vehículo por delante.").
diagnostico([r10,r36], "Nivel de aceite insuficiente con asistente de luz de carretera conectado.").
diagnostico([r10,r37], "Nivel de aceite insuficiente con sistema Start-Stop disponible.").
diagnostico([r10,r38], "Nivel de aceite insuficiente con preaviso de servicio.").
diagnostico([r10,r39], "Nivel de aceite insuficiente con motor en marcha.").
diagnostico([r10,r40], "Nivel de aceite insuficiente con temperatura exterior inferior a +4º C.").
diagnostico([r11,r1], "Avería en el ESC y luz de carretera encendida.").
diagnostico([r11,r2], "Avería en el ESC y luz de circulación diurna activada.").
diagnostico([r11,r3], "Avería en el ESC e intermitente derecho encendido.").
diagnostico([r11,r4], "Avería en el ESC e intermitente izquierdo encendido.").
diagnostico([r11,r5], "Avería en el ESC con motor en marcha.").
diagnostico([r11,r6], "Avería en el ESC con regulador de velocidad regulado.").
diagnostico([r11,r7], "Avería en el ESC con fallo en el ABS.").
diagnostico([r11,r8], "Avería en el ESC con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r11,r9], "Avería en el ESC con nivel del tanque de lava cristales bajo.").
diagnostico([r11,r10], "Avería en el ESC con nivel de aceite insuficiente.").
diagnostico([r11,r12], "Avería en el ESC con fallo en el alumbrado del vehículo.").
diagnostico([r11,r13], "Avería en el ESC con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r11,r14], "Avería en el ESC con avería en el catalizador.").
diagnostico([r11,r15], "Avería en el ESC con pastillas de freno delanteras desgastadas.").
diagnostico([r11,r16], "Avería en el ESC con depósito de combustible casi vacío.").
diagnostico([r11,r17], "Avería en el ESC con precalentamiento del motor diesel.").
diagnostico([r11,r18], "Avería en el ESC con cinturón de seguridad desabrochado.").
diagnostico([r11,r19], "Avería en el ESC con cajuela abierta.").
diagnostico([r11,r20], "Avería en el ESC con puerta abierta.").
diagnostico([r11,r21], "Avería en el ESC con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r11,r22], "Avería en el ESC con fallo de batería.").
diagnostico([r11,r23], "Avería en el ESC con fallo de la dirección asistida electromecánica.").
diagnostico([r11,r24], "Avería en el ESC con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r11,r25], "Avería en el ESC con freno de mano puesto.").
diagnostico([r11,r26], "Avería en el ESC con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r11,r27], "Avería en el ESC con filtro de partículas diesel saturado de hollín.").
diagnostico([r11,r28], "Avería en el ESC con avería en el cambio automático.").
diagnostico([r11,r29], "Avería en el ESC con estado de carga de la batería móvil.").
diagnostico([r11,r30], "Avería en el ESC con régimen del motor limitado.").
diagnostico([r11,r31], "Avería en el ESC con avería en el sistema híbrido.").
diagnostico([r11,r32], "Avería en el ESC con ACC activo. Vehículo por delante.").
diagnostico([r11,r33], "Avería en el ESC con luz trasera antiniebla encendida.").
diagnostico([r11,r34], "Avería en el ESC con tapón del depósito de combustible abierto.").
diagnostico([r11,r35], "Avería en el ESC con ACC activo. Ningún vehículo por delante.").
diagnostico([r11,r36], "Avería en el ESC con asistente de luz de carretera conectado.").
diagnostico([r11,r37], "Avería en el ESC con sistema Start-Stop disponible.").
diagnostico([r11,r38], "Avería en el ESC con preaviso de servicio.").
diagnostico([r11,r39], "Avería en el ESC con motor en marcha.").
diagnostico([r11,r40], "Avería en el ESC con temperatura exterior inferior a +4º C.").
diagnostico([r12,r1], "Fallo en el alumbrado del vehículo y luz de carretera encendida.").
diagnostico([r12,r2], "Fallo en el alumbrado del vehículo y luz de circulación diurna activada.").
diagnostico([r12,r3], "Fallo en el alumbrado del vehículo e intermitente derecho encendido.").
diagnostico([r12,r4], "Fallo en el alumbrado del vehículo e intermitente izquierdo encendido.").
diagnostico([r12,r5], "Fallo en el alumbrado del vehículo con motor en marcha.").
diagnostico([r12,r6], "Fallo en el alumbrado del vehículo con regulador de velocidad regulado.").
diagnostico([r12,r7], "Fallo en el alumbrado del vehículo con fallo en el ABS.").
diagnostico([r12,r8], "Fallo en el alumbrado del vehículo con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r12,r9], "Fallo en el alumbrado del vehículo con nivel del tanque de lava cristales bajo.").
diagnostico([r12,r10], "Fallo en el alumbrado del vehículo con nivel de aceite insuficiente.").
diagnostico([r12,r11], "Fallo en el alumbrado del vehículo con avería en el ESC.").
diagnostico([r12,r13], "Fallo en el alumbrado del vehículo con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r12,r14], "Fallo en el alumbrado del vehículo con avería en el catalizador.").
diagnostico([r12,r15], "Fallo en el alumbrado del vehículo con pastillas de freno delanteras desgastadas.").
diagnostico([r12,r16], "Fallo en el alumbrado del vehículo con depósito de combustible casi vacío.").
diagnostico([r12,r17], "Fallo en el alumbrado del vehículo con precalentamiento del motor diesel.").
diagnostico([r12,r18], "Fallo en el alumbrado del vehículo con cinturón de seguridad desabrochado.").
diagnostico([r12,r19], "Fallo en el alumbrado del vehículo con cajuela abierta.").
diagnostico([r12,r20], "Fallo en el alumbrado del vehículo con puerta abierta.").
diagnostico([r12,r21], "Fallo en el alumbrado del vehículo con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r12,r22], "Fallo en el alumbrado del vehículo con fallo de batería.").
diagnostico([r12,r23], "Fallo en el alumbrado del vehículo con fallo de la dirección asistida electromecánica.").
diagnostico([r12,r24], "Fallo en el alumbrado del vehículo con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r12,r25], "Fallo en el alumbrado del vehículo con freno de mano puesto.").
diagnostico([r12,r26], "Fallo en el alumbrado del vehículo con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r12,r27], "Fallo en el alumbrado del vehículo con filtro de partículas diesel saturado de hollín.").
diagnostico([r12,r28], "Fallo en el alumbrado del vehículo con avería en el cambio automático.").
diagnostico([r12,r29], "Fallo en el alumbrado del vehículo con estado de carga de la batería móvil.").
diagnostico([r12,r30], "Fallo en el alumbrado del vehículo con régimen del motor limitado.").
diagnostico([r12,r31], "Fallo en el alumbrado del vehículo con avería en el sistema híbrido.").
diagnostico([r12,r32], "Fallo en el alumbrado del vehículo con ACC activo. Vehículo por delante.").
diagnostico([r12,r33], "Fallo en el alumbrado del vehículo con luz trasera antiniebla encendida.").
diagnostico([r12,r34], "Fallo en el alumbrado del vehículo con tapón del depósito de combustible abierto.").
diagnostico([r12,r35], "Fallo en el alumbrado del vehículo con ACC activo. Ningún vehículo por delante.").
diagnostico([r12,r36], "Fallo en el alumbrado del vehículo con asistente de luz de carretera conectado.").
diagnostico([r12,r37], "Fallo en el alumbrado del vehículo con sistema Start-Stop disponible.").
diagnostico([r12,r38], "Fallo en el alumbrado del vehículo con preaviso de servicio.").
diagnostico([r12,r39], "Fallo en el alumbrado del vehículo con motor en marcha.").
diagnostico([r12,r40], "Fallo en el alumbrado del vehículo con temperatura exterior inferior a +4º C.").
diagnostico([r13,r1], "Presión de inflado de los neumáticos demasiado baja y luz de carretera encendida.").
diagnostico([r13,r2], "Presión de inflado de los neumáticos demasiado baja y luz de circulación diurna activada.").
diagnostico([r13,r3], "Presión de inflado de los neumáticos demasiado baja e intermitente derecho encendido.").
diagnostico([r13,r4], "Presión de inflado de los neumáticos demasiado baja e intermitente izquierdo encendido.").
diagnostico([r13,r5], "Presión de inflado de los neumáticos demasiado baja con motor en marcha.").
diagnostico([r13,r6], "Presión de inflado de los neumáticos demasiado baja con regulador de velocidad regulado.").
diagnostico([r13,r7], "Presión de inflado de los neumáticos demasiado baja con fallo en el ABS.").
diagnostico([r13,r8], "Presión de inflado de los neumáticos demasiado baja con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r13,r9], "Presión de inflado de los neumáticos demasiado baja con nivel del tanque de lava cristales bajo.").
diagnostico([r13,r10], "Presión de inflado de los neumáticos demasiado baja con nivel de aceite insuficiente.").
diagnostico([r13,r11], "Presión de inflado de los neumáticos demasiado baja con avería en el ESC.").
diagnostico([r13,r12], "Presión de inflado de los neumáticos demasiado baja con fallo en el alumbrado del vehículo.").
diagnostico([r13,r14], "Presión de inflado de los neumáticos demasiado baja con avería en el catalizador.").
diagnostico([r13,r15], "Presión de inflado de los neumáticos demasiado baja con pastillas de freno delanteras desgastadas.").
diagnostico([r13,r16], "Presión de inflado de los neumáticos demasiado baja con depósito de combustible casi vacío.").
diagnostico([r13,r17], "Presión de inflado de los neumáticos demasiado baja con precalentamiento del motor diesel.").
diagnostico([r13,r18], "Presión de inflado de los neumáticos demasiado baja con cinturón de seguridad desabrochado.").
diagnostico([r13,r19], "Presión de inflado de los neumáticos demasiado baja con cajuela abierta.").
diagnostico([r13,r20], "Presión de inflado de los neumáticos demasiado baja con puerta abierta.").
diagnostico([r13,r21], "Presión de inflado de los neumáticos demasiado baja con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r13,r22], "Presión de inflado de los neumáticos demasiado baja con fallo de batería.").
diagnostico([r13,r23], "Presión de inflado de los neumáticos demasiado baja con fallo de la dirección asistida electromecánica.").
diagnostico([r13,r24], "Presión de inflado de los neumáticos demasiado baja con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r13,r25], "Presión de inflado de los neumáticos demasiado baja con freno de mano puesto.").
diagnostico([r13,r26], "Presión de inflado de los neumáticos demasiado baja con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r13,r27], "Presión de inflado de los neumáticos demasiado baja con filtro de partículas diesel saturado de hollín.").
diagnostico([r13,r28], "Presión de inflado de los neumáticos demasiado baja con avería en el cambio automático.").
diagnostico([r13,r29], "Presión de inflado de los neumáticos demasiado baja con estado de carga de la batería móvil.").
diagnostico([r13,r30], "Presión de inflado de los neumáticos demasiado baja con régimen del motor limitado.").
diagnostico([r13,r31], "Presión de inflado de los neumáticos demasiado baja con avería en el sistema híbrido.").
diagnostico([r13,r32], "Presión de inflado de los neumáticos demasiado baja con ACC activo. Vehículo por delante.").
diagnostico([r13,r33], "Presión de inflado de los neumáticos demasiado baja con luz trasera antiniebla encendida.").
diagnostico([r13,r34], "Presión de inflado de los neumáticos demasiado baja con tapón del depósito de combustible abierto.").
diagnostico([r13,r35], "Presión de inflado de los neumáticos demasiado baja con ACC activo. Ningún vehículo por delante.").
diagnostico([r13,r36], "Presión de inflado de los neumáticos demasiado baja con asistente de luz de carretera conectado.").
diagnostico([r13,r37], "Presión de inflado de los neumáticos demasiado baja con sistema Start-Stop disponible.").
diagnostico([r13,r38], "Presión de inflado de los neumáticos demasiado baja con preaviso de servicio.").
diagnostico([r13,r39], "Presión de inflado de los neumáticos demasiado baja con motor en marcha.").
diagnostico([r13,r40], "Presión de inflado de los neumáticos demasiado baja con temperatura exterior inferior a +4º C.").
diagnostico([r14,r1], "Avería en el catalizador y luz de carretera encendida.").
diagnostico([r14,r2], "Avería en el catalizador y luz de circulación diurna activada.").
diagnostico([r14,r3], "Avería en el catalizador e intermitente derecho encendido.").
diagnostico([r14,r4], "Avería en el catalizador e intermitente izquierdo encendido.").
diagnostico([r14,r5], "Avería en el catalizador con motor en marcha.").
diagnostico([r14,r6], "Avería en el catalizador con regulador de velocidad regulado.").
diagnostico([r14,r7], "Avería en el catalizador con fallo en el ABS.").
diagnostico([r14,r8], "Avería en el catalizador con avería en el sistema de airbags y pretensores de los cinturones.").
diagnostico([r14,r9], "Avería en el catalizador con nivel del tanque de lava cristales bajo.").
diagnostico([r14,r10], "Avería en el catalizador con nivel de aceite insuficiente.").
diagnostico([r14,r11], "Avería en el catalizador con avería en el ESC.").
diagnostico([r14,r12], "Avería en el catalizador con fallo en el alumbrado del vehículo.").
diagnostico([r14,r13], "Avería en el catalizador con presión de inflado de los neumáticos demasiado baja.").
diagnostico([r14,r15], "Avería en el catalizador con pastillas de freno delanteras desgastadas.").
diagnostico([r14,r16], "Avería en el catalizador con depósito de combustible casi vacío.").
diagnostico([r14,r17], "Avería en el catalizador con precalentamiento del motor diesel.").
diagnostico([r14,r18], "Avería en el catalizador con cinturón de seguridad desabrochado.").
diagnostico([r14,r19], "Avería en el catalizador con cajuela abierta.").
diagnostico([r14,r20], "Avería en el catalizador con puerta abierta.").
diagnostico([r14,r21], "Avería en el catalizador con cambio de doble embrague DSG sobrecalentado.").
diagnostico([r14,r22], "Avería en el catalizador con fallo de batería.").
diagnostico([r14,r23], "Avería en el catalizador con fallo de la dirección asistida electromecánica.").
diagnostico([r14,r24], "Avería en el catalizador con control de crucero adaptativo (ACC) no disponible.").
diagnostico([r14,r25], "Avería en el catalizador con freno de mano puesto.").
diagnostico([r14,r26], "Avería en el catalizador con nivel de aceite del motor bajo o avería en el sistema de aceite del motor.").
diagnostico([r14,r27], "Avería en el catalizador con filtro de partículas diesel saturado de hollín.").
diagnostico([r14,r28], "Avería en el catalizador con avería en el cambio automático.").
diagnostico([r14,r29], "Avería en el catalizador con estado de carga de la batería móvil.").
diagnostico([r14,r30], "Avería en el catalizador con régimen del motor limitado.").
diagnostico([r14,r31], "Avería en el catalizador con avería en el sistema híbrido.").
diagnostico([r14,r32], "Avería en el catalizador con ACC activo. Vehículo por delante.").
diagnostico([r14,r33], "Avería en el catalizador con luz trasera antiniebla encendida.").
diagnostico([r14,r34], "Avería en el catalizador con tapón del depósito de combustible abierto.").
diagnostico([r14,r35], "Avería en el catalizador con ACC activo. Ningún vehículo por delante.").
diagnostico([r14,r36], "Avería en el catalizador con asistente de luz de carretera conectado.").
diagnostico([r14,r37], "Avería en el catalizador con sistema Start-Stop disponible.").
diagnostico([r14,r38], "Avería en el catalizador con preaviso de servicio.").
diagnostico([r14,r39], "Avería en el catalizador con motor en marcha.").
diagnostico([r14,r40], "Avería en el catalizador con temperatura exterior inferior a +4º C.").

% Funcion para mapear los identificadores de los iconos 
% a sus respectivos mensajes e imprime el diagnostico
imprimir_causa_mal_funcionamiento(Iconos) :-
    causas(ListaCausas),
    (   diagnostico(Iconos, Diagnostico) ->
        format('~w~n', [Diagnostico])
    ;   findall(Mensaje, (member(Icono, Iconos), mapeo_de_iconos(ListaCausas, Icono, Mensaje)), Mensajes),
        (   Mensajes == [] ->
            format('Diagnosticos individuales: ~w~n', [Mensajes])
        ;   format('CODE 404')
        )
    ).

% Función para mapear los identificadores de los iconos a mensajes individuales
mapeo_de_iconos(ListaCausas, Icono, Mensaje) :-
    member((Icono, _, Mensaje), ListaCausas), !.
mapeo_de_iconos(_, Icono, no_diagnostic(Icono)).