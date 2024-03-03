%Mapeo de iconos del tablero por causas de mal funcionamiento
causas([
    ('r1',luz_frontal_antiniebla,"Faros antiniebla encendidos"),
    ('r2',advertencia_direccion_asistida,"Bajo nivel de liquido de direccion asistida"),
    ('r2',advertencia_direccion_asistida,"Bajo nivel de liquido de direccion asistida"),
    ('r3',luz_trasera_antiniebla,"Faros antiniebla traseros encendidos"),
    ('r4',liquido_parabrisas_bajo,"Poco líquido en deposito de parabrisas"),
    ('r5',pastillas_freno,"Falso contacto o problema con unidad de control\nBajo nivel de líquido de frenos\nProblema con el flotador del depósito de líquido de frenos"),
    ('r6',control_velocidad_encendido,"La velocidad crucero está encendida"),
    ('r7',indicadores_direccion,"Direccional encendida"),
    ('r8',sensor_lluvia_luz,"Malfuncionamiento de los sensores\nInstalación de parabrisas no original"),
    ('r9',modo_invierno,"Modo invierno activado"),
    ('r10',indicador_informacion,"Recordatorio de mantenimiento"),
    ('r11',precalentamiento_diesel,"Precalentamiento del motor"),
    ('r12',indicador_congelamiento,"Camino congelado"),
    ('r13',advertencia_switch_encendido,"Falla en el contacto"),
    ('r14',llave_fuera_vehiculo,"La llave no está en el vehículo"),
    ('r15',bateria_baja_llave,"Llave con batería baja"),
    ('r16',advertencia_distancia,"Poca distancia"),
    ('r17',oprima_embrague,"Falta pisar el embrague"),
    ('r18',oprima_freno,"Falta pisar el freno"),
    ('r19',bloqueo_direccion,"Dirección bloqueada"),
    ('r20',luces_altas,"Luces altas encendidas"),
    ('r21',presion_llantas_bajo,"Neumáticos bajos"),
    ('r22',informacion_luz_lateral,"La luz lateral está encendida"),
    ('r23',falla_luz_exterior,"La luz exterior tiene falla"),
    ('r24',advertencia_luz_freno,"No enciende la luz de freno trasera"),
    ('r25',filtro_particulas_diesel,"Falla en el filtro de partículas diesel"),
    ('r26',advertencia_enganche_trailer,"Enganche mal colocado o dañado"),
    ('r27',suspension_neumatica,"Suspensión de aire"),
    ('r28',advertencia_salida_carril,"Cambio de carril cerca de otros vehículos"),
    ('r29',convertidor_catalitico,"Falla en el convertidor catalítico"),
    ('r30',cinturon_seguridad,"Cinturón de seguridad no abrochado"),
    ('r31',luz_freno_parqueo,"Freno de parqueo activado"),
    ('r32',advertencia_alternador,"Problema en la batería\nProblema en el alternador"),
    ('r33',asistente_parqueo,"Asistente de parqueo activado"),
    ('r34',mantenimiento_requerido,"El auto requiere mantenimiento"),
    ('r35',luz_adaptable,"Focos adaptativos activos"),
    ('r36',control_rango_luz,"Control de alcance de los focos activo"),
    ('r37',advertencia_spoiler_trasero,"Advertencia de alerón trasero"),
    ('r38',advertencia_techo_convertible,"Advertencia de techo convertible"),
    ('r39',advertencia_airbag,"Airbag"),
    ('r40',advertencia_freno_mano,"Freno de mano activado"),
    ('r41',agua_filtro_combustible,"Agua en el filtro de combustible"),
    ('r42',airbag_desactivado,"Airbag desactivado"),
    ('r43',falla_motorizacion,"Motor\nTransmisión"),
    ('r44',luces_medias,"Luces medias"),
    ('r45',filtro_aire_sucio,"Filtro de aire sucio"),
    ('r46',conduccion_economica,"Indicador de manejo ecológico"),
    ('r47',asistente_descenso,"Control de descenso en pendientes activado"),
    ('r48',advertencia_temperatura,"Advertencia de alta temperatura"),
    ('r49',advertencia_ars,"ABS defectuoso"),
    ('r50',advertencia_filtro_combustible,"Filtro de combustible defectuoso"),
    ('r51',puerta_abierta,"Puerta abierta"),
    ('r52',capo_abierto,"Capó abierto"),
    ('r53',combustible_bajo,"Nivel de combustible bajo"),
    ('r54',advertencia_cambio_automatico,"Problemas en la caja automática"),
    ('r55',limite_velocidad,"Limitador de velocidad activado"),
    ('r56',damper_suspension,"Falla en los amortiguadores\nFalla en la suspensión"),
    ('r57',baul_abierto,"Baúl abierto"),
    ('r58',presion_aceite_baja,"Presión del aceite bajo"),
    ('r59',desempanador_delantero,"Desempañador del parabrisas activado"),
    ('r60',control_estabilidad_apagado,"Control de estabilidad desactivado"),
    ('r61',sensor_lluvia,"Sensor de lluvia activado"),
    ('r62',advertencia_emisiones_motor,"Motor"),
    ('r63',advertencia_emisiones_motor,"Emisión de gases alta"),
    ('r64',desempanador_trasero,"Limpiaparabrisas trasero activado"),
    ('r65',limpiaparabrisas_delantero_automatico,"Limpiaparabrisas delantero automático")
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
