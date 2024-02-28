%está encendida la luz x por causa de y
%esta_encendido(X,Y).
esta_encendido(luz_frontal_antiniebla, 'r1'):- write("Faros antiniebla encendidos\n").
esta_encendido(advertencia_direccion_asistida, 'r2'):- write("Bajo nivel de liquido de direccion asistida\n").
esta_encendido(luz_trasera_antiniebla, 'r3'):- write("Faros antiniebla traseros encendidos\n").
esta_encendido(liquido_parabrisas_bajo, 'r4'):- write("Poco líquido en deposito de parabrisas\n").
esta_encendido(pastillas_freno, 'r5'):-write("Falso contacto o problema con unidad de control\nBajo nivel de líquido de frenos\nProblema con el flotador del depósito de líquido de frenos").
esta_encendido(control_velocidad_encendido, 'r6'):-write("La velocidad crucero está encendida").
esta_encendido(indicadores_direccion, 'r7'):-write("Direccional encendida").
esta_encendido(sensor_lluvia_luz, 'r8'):-write("Malfuncionamiento de los sensores\nInstalación de parabrisas no original").
esta_encendido(modo_invierno, 'r9'):-write("Modo invierno activado").
esta_encendido(indicador_informacion, 'r10'):-write("Recordatorio de mantenimiento").
esta_encendido(precalentamiento_diesel, 'r11'):-write("Precalentamiento del motor").
esta_encendido(indicador_congelamiento, 'r12'):-write("Camino congelado").
esta_encendido(advertencia_switch_encendido, 'r13'):-write("Falla en el contacto").
esta_encendido(llave_fuera_vehiculo, 'r14'):-write("La llave no está en el vehículo").
esta_encendido(bateria_baja_llave, 'r15'):-write("Llave con batería baja").
esta_encendido(advertencia_distancia, 'r16'):-write("Poca distancia").
esta_encendido(oprima_embrague, 'r17'):-write("Falta pisar el embrague").
esta_encendido(oprima_freno, 'r18'):-write("Falta pisar el freno").
esta_encendido(bloqueo_direccion, 'r19'):-write("Dirección bloqueada").
esta_encendido(luces_altas, 'r20'):-write("Luces altas encendidas").
esta_encendido(presion_llantas_bajo, 'r21'):-write("Neumáticos bajos").
esta_encendido(informacion_luz_lateral, 'r22'):-write("La luz lateral está encendida").
esta_encendido(falla_luz_exterior, 'r23'):-write("La luz exterior tiene falla").
esta_encendido(advertencia_luz_freno, 'r24'):-write("No enciende la luz de freno trasera").
esta_encendido(filtro_particulas_diesel, 'r25'):-write("Falla en el filtro de partículas diesel").
esta_encendido(advertencia_enganche_trailer, 'r26'):-write("Enganche mal colocado o dañado").
esta_encendido(suspension_neumatica, 'r27'):-write("Suspensión de aire").
esta_encendido(advertencia_salida_carril, 'r28'):-write("Cambio de carril cerca de otros vehículos").
esta_encendido(convertidor_catalitico, 'r29'):-write("Falla en el convertidor catalítico").
esta_encendido(cinturon_seguridad, 'r30'):-write("Cinturón de seguridad no abrochado").
esta_encendido(luz_freno_parqueo, 'r31'):-write("Freno de parqueo activado").
esta_encendido(advertencia_alternador, 'r32'):-write("Problema en la batería\nProblema en el alternador").
esta_encendido(asistente_parqueo, 'r33'):-write("Asistente de parqueo activado").
esta_encendido(mantenimiento_requerido, 'r34'):-write("El auto requiere mantenimiento").
esta_encendido(luz_adaptable, 'r35'):-write("Focos adaptativos activos").
esta_encendido(control_rango_luz, 'r36'):-write("Control de alcance de los focos activo").
esta_encendido(advertencia_spoiler_trasero, 'r37'):-write("Advertencia de alerón trasero").
esta_encendido(advertencia_techo_convertible, 'r38'):-write("Advertencia de techo convertible").
esta_encendido(advertencia_airbag, 'r39'):-write("Airbag").
esta_encendido(advertencia_freno_mano, 'r40'):-write("Freno de mano activado").
esta_encendido(agua_filtro_combustible, 'r41'):-write("Agua en el filtro de combustible").
esta_encendido(airbag_desactivado, 'r42'):-write("Airbag desactivado").
esta_encendido(falla_motorizacion, 'r43'):-write("Motor\nTransmisión").
esta_encendido(luces_medias, 'r44'):-write("Luces medias").
esta_encendido(filtro_aire_sucio, 'r45'):-write("Filtro de aire sucio").
esta_encendido(conduccion_economica, 'r46'):-write("Indicador de manejo ecológico").
esta_encendido(asistente_descenso, 'r47'):-write("Control de descenso en pendientes activado").
esta_encendido(advertencia_temperatura, 'r48'):-write("Advertencia de alta temperatura").
esta_encendido(advertencia_ars, 'r49'):-write("ABS defectuoso").
esta_encendido(advertencia_filtro_combustible, 'r50'):-write("Filtro de combustible defectuoso").
esta_encendido(puerta_abierta, 'r51'):-write("Puerta abierta").
esta_encendido(capo_abierto, 'r52'):-write("Capó abierto").
esta_encendido(combustible_bajo, 'r53'):-write("Nivel de combustible bajo").
esta_encendido(advertencia_cambio_automatico, 'r54'):-write("Problemas en la caja automática").
esta_encendido(limite_velocidad, 'r55'):-write("Limitador de velocidad activado").
esta_encendido(damper_suspension, 'r56'):-write("Falla en los amortiguadores\nFalla en la suspensión").
esta_encendido(baul_abierto, 'r57'):-write("Baúl abierto").
esta_encendido(presion_aceite_baja, 'r58'):-write("Presión del aceite bajo").
esta_encendido(desempanador_delantero, 'r59'):-write("Desempañador del parabrisas activado").
esta_encendido(control_estabilidad_apagado, 'r60'):-write("Control de estabilidad desactivado").
esta_encendido(sensor_lluvia, 'r61'):-write("Sensor de lluvia activado").
esta_encendido(advertencia_emisiones_motor, 'r62'):-write("Motor").
esta_encendido(advertencia_emisiones_motor, 'r63'):-write("Emisión de gases alta").
esta_encendido(desempanador_trasero, 'r64'):-write("Limpiaparabrisas trasero activado").
esta_encendido(limpiaparabrisas_delantero_automatico, 'r65'):-write("Limpiaparabrisas delantero automático").
