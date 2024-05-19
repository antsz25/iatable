<template>
  <div class="manual">
    <div class="info-colors">
      <div class="wrapper">
        <div class="circle circle-blue">
          <div class="circle circle-green"></div>
        </div>
        <span style="margin-left: 15px;font-weight: 700; font-size: 18px;">Funciona Correctamente</span>
      </div>
      <div class="wrapper">
        <div class="circle circle-yellow"></div>
        <span style="font-weight: 700; font-size: 18px;">Puedes seguir circulando</span>
      </div>
      <div class="wrapper">
        <div class="circle circle-red"></div>
        <span style="font-weight: 700; font-size: 18px;">Detente y busca asistencia especializada</span>
      </div>
    </div>
    <div class="list-icons">
      <div class="card-info" v-for="(luz, index) in luces" :key="index">
        <div>
          <img :src="require(`@/assets/${luz.imageName}.png`)" width="100" height="100" alt="luces">
          <div class="card-text">
            <span style="font-weight: 700;">{{ luz.longName }}</span>
            <p>{{ luz.description }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { LuzVM } from '@/utilities/viewmodels'

export default {
  data() {
    return {
      luces: [
        {
          Name: 'r1',
          imageName: "luz1",
          isSelected: false,
          description: "La luz de carretera está encendida o las ráfagas de luz están  accionadas",
          longName: "Luz de carretera encendida"
        },
        {
          Name: 'r2',
          imageName: "luz2",
          isSelected: false,
          description: "Luz de circulación diurna activada",
          longName: "Luz de circulación diurna activada"
        },
        {
          Name: 'r3',
          imageName: "luz3",
          isSelected: false,
          description: "Intermitente izquierdo encendido",
          longName: "Intermitente izquierdo encendido"
        },
        {
          Name: 'r4',
          imageName: "luz4",
          isSelected: false,
          description: "Intermitente derecho encendido",
          longName: "Intermitente derecho encendido"
        },
        {
          Name: 'r5',
          imageName: "luz5",
          isSelected: false,
          description: "Si se enciende: ¡pise el pedal  del freno!  (Poner el motor en  marcha)",
          longName: "Motor en marcha"
        },
        {
          Name: 'r6',
          imageName: "luz6",
          isSelected: false,
          description: "El regulador de velocidad (GRA)  está regulado. El control de  crucero adaptativo (ACC) está  conectado y activo",
          longName: "Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo"
        },
        {
          Name: 'r7',
          imageName: "luz7",
          isSelected: false,
          description: "ABS no funciona correctamente o no funciona en  absoluto",
          longName: "El ABS no funciona correctamente"
        },
        {
          Name: 'r8',
          imageName: "luz8",
          isSelected: false,
          description: "Hay una avería en el sistema de  airbags y de los pretensores de  los cinturones",
          longName: "Avería en el sistema de airbags y pretensores de los cinturones"
        },
        {
          Name: 'r9',
          imageName: "luz9",
          isSelected: false,
          description: "Nivel del tanque de lava cristales bajo",
          longName: "Nivel del tanque de lava cristales bajo"
        },
        {
          Name: 'r10',
          imageName: "luz10",
          isSelected: false,
          description: "Presión insuficiente del aceite. Detenga el motor y compruebe  el nivel de aceite del motor",
          longName: "Nivel de aceite insuficiente"
        },
        {
          Name: 'r11',
          imageName: "luz11",
          isSelected: false,
          description: "Si se enciende: hay una avería  en el ESC o este se ha desconectado por causas del sistema",
          longName: "Avería en el ESC"
        },
        {
          Name: 'r12',
          imageName: "luz12",
          isSelected: false,
          description: "Si se enciende: existe un fallo  parcial o total en el alumbrado  del vehículo",
          longName: "Fallo en el alumbrado del vehículo"
        },
        {
          Name: 'r13',
          imageName: "luz13",
          isSelected: false,
          description: "La presión de inflado de los  neumáticos es demasiado baja  o hay una avería en el sistema  de control de los neumáticos",
          longName: "Presión de inflado de los neumáticos demasiado baja"
        },
        {
          Name: 'r14',
          imageName: "luz14",
          isSelected: false,
          description: "Avería en el catalizador",
          longName: "Avería en el catalizador"
        },
        {
          Name: 'r15',
          imageName: "luz15",
          isSelected: false,
          description: "Pastillas de freno delanteras desgastadas",
          longName: "Pastillas de freno delanteras desgastadas"
        },
        {
          Name: 'r16',
          imageName: "luz16",
          isSelected: false,
          description: "Depósito de combustible casi vacío",
          longName: "Depósito de combustible casi vacío"
        },
        {
          Name: 'r17',
          imageName: "luz17",
          isSelected: false,
          description: "Si se enciende: se está precalentando el motor diesel",
          longName: "Precalentamiento del motor diesel"
        },
        {
          Name: 'r18',
          imageName: "luz18",
          isSelected: false,
          description: "¡Abroche su cinturón de seguridad!",
          longName: "Cinturón de seguridad desabrochado"
        },
        {
          Name: 'r19',
          imageName: "luz19",
          isSelected: false,
          description: "Cajuela abierta",
          longName: "Cajuela abierta"
        },
        {
          Name: 'r20',
          imageName: "luz20",
          isSelected: false,
          description: "Puerta o puertas abiertas. Asegúrese de que todas las puertas  están completamente cerradas",
          longName: "Puerta abierta"
        },
        {
          Name: 'r21',
          imageName: "luz21",
          isSelected: false,
          description: "El cambio de doble embargue  DSG® se ha sobrecalentado",
          longName: "Cambio de doble embrague DSG sobrecalentado"
        },
        {
          Name: 'r22',
          imageName: "luz22",
          isSelected: false,
          description: "Falla de batería. Acuda a un  taller especializado",
          longName: "Falla de batería"
        },
        {
          Name: 'r23',
          imageName: "luz23",
          isSelected: false,
          description: "Falla de la dirección asistida  electromecánica. No continuar  la marcha. Acuda a un taller  especializado",
          longName: "Falla de la dirección asistida electromecánica"
        },
        {
          Name: 'r24',
          imageName: "luz24",
          isSelected: false,
          description: "El control de crucero adaptativo  (ACC) no está disponible",
          longName: "Control de crucero adaptativo (ACC) no disponible"
        },
        {
          Name: 'r25',
          imageName: "luz25",
          isSelected: false,
          description: "Freno de mano puesto. Si se enciende repentinamente: falla en  el sistema de frenos o líquido de  frenos insuficiente",
          longName: "Freno de mano puesto"
        },
        {
          Name: 'r26',
          imageName: "luz26",
          isSelected: false,
          description: "Si parpadea: hay una avería en el  sistema del aceite del motor. Si  se enciende: el nivel del aceite  del motor está demasiado bajo",
          longName: "Nivel de aceite del motor bajo o avería en el sistema de aceite del motor"
        },
        {
          Name: 'r27',
          imageName: "luz27",
          isSelected: false,
          description: "El filtro de partículas diesel está  saturado de hollín",
          longName: "Filtro de partículas diesel saturado de hollín"
        },
        {
          Name: 'r28',
          imageName: "luz28",
          isSelected: false,
          description: "Avería en el cambio automático",
          longName: "Avería en el cambio automático"
        },
        {
          Name: 'r29',
          imageName: "luz29",
          isSelected: false,
          description: "Estado de carga de la batería móvil",
          longName: "Estado de carga de la batería móvil"
        },
        {
          Name: 'r30',
          imageName: "luz30",
          isSelected: false,
          description: "El régimen del motor está  limitado (protección contra  sobrecalentamiento)",
          longName: "Régimen del motor limitado"
        },
        {
          Name: 'r31',
          imageName: "luz31",
          isSelected: false,
          description: "Hay una avería en el sistema  híbrido (Hybrid)",
          longName: "Avería en el sistema híbrido"
        },
        {
          Name: 'r32',
          imageName: "luz32",
          isSelected: false,
          description: "El ACC está activo. No se detecta ningún vehículo por delante.",
          longName: "ACC activo. Vehículo por delante"
        },
        {
          Name: 'r33',
          imageName: "luz33",
          isSelected: false,
          description: "La luz trasera antiniebla está encendida",
          longName: "Luz trasera antiniebla encendida"
        },
        {
          Name: 'r34',
          imageName: "luz34",
          isSelected: false,
          description: "El tapón del depósito de combustible no está cerrado correctamente",
          longName: "Tapón del depósito de combustible abierto"
        },
        {
          Name: 'r35',
          imageName: "luz35",
          isSelected: false,
          description: "El ACC está activo. No se detecta ningún vehículo por delante",
          longName: "ACC activo. Ningún vehículo por delante"
        },
        {
          Name: 'r36',
          imageName: "luz36",
          isSelected: false,
          description: "El asistente de la luz de carretera está conectado",
          longName: "Asistente de luz de carretera conectado"
        },
        {
          Name: 'r37',
          imageName: "luz37",
          isSelected: false,
          description: "El sistema Start-Stop está  disponible, el motor se ha apagado automáticamente",
          longName: "Sistema Start-Stop disponible"
        },
        {
          Name: 'r38',
          imageName: "luz38",
          isSelected: false,
          description: "Si se enciende: preaviso de  servicio",
          longName: "Preaviso de servicio"
        },
        {
          Name: 'r39',
          imageName: "luz39",
          isSelected: false,
          description: "En vehículos con motor diesel: el motor se pone en marcha",
          longName: "Motor diesel"
        },
        {
          Name: 'r40',
          imageName: "luz40",
          isSelected: false,
          description: "La temperatura exterior es  inferior a +4º C (+39 ºF)",
          longName: "Temperatura exterior inferior a +4º C."
        }
      ] as LuzVM[],

    }
  }
}
</script>

<style scoped>
.circle {
  width: 35px;
  height: 35px;
  border-radius: 100%;
  display: block;
}

.wrapper {
  display: flex;
  align-items: center;
  gap: 8px;
}

.manual {
  padding: 8px;
  width: 100%;
}

.card-text {
  width: 100%;
  border-top: 0.5px rgba(0, 0, 0, 0.39) solid;
  display: flex;
  flex-direction: column;
}

.info-colors {
  display: flex;
  justify-content: center;
  gap: 20px;
}

.list-icons {
  display: flex;
  width: 100%;
  gap: 16px;
  flex-wrap: wrap;
  justify-content: center;
  height: 100%;
  padding: 20px;
}

.card-info {
  border: 0.5px rgba(0, 0, 0, 0.400) solid;
  border-radius: 5px;
  display: flex;
  width: 20%;
}

.card-info div {
  width: 100%;

}


.circle-blue {
  background-color: blue;
}

.circle-green {
  background-color: green;
  margin-left: 15px;
}

.circle-yellow {
  background-color: yellow;
}

.circle-red {
  background-color: red;
}
</style>