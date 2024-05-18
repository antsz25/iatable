<template>
  <div class="flex-col">
    <div class="titulo">
      <h2>Seleccione una o más luces para obtener diagnostico!</h2>
      <b-button @click="borrarSeleccion" variant="outline-danger">
        <font-awesome-icon icon="times" /> Borrar Selección
      </b-button>
    </div>
    <div class="full">
      <div v-for="(luz, index) in luces" :key="index" class="luces-wrapper" :class="luz.isSelected ? 'active-light': 'inactive-light'"  @click="lightSelected(luz)">
        <img :src="require(`@/assets/${luz.imageName}.png`)" width="100">
      </div>
      <div>
        <b-button variant="primary" @click="openModal" v-b-modal.modal :disabled="listOfLightsShortName.length<=0">Obtener Diagnostico</b-button>
        <p>Lista de luces seleccionadas: {{listOfLightsShortName}}</p>
      </div>
      <b-modal 
      id="modal"
      centered 
      title="Diagnostico">
      <h5>Lista de luces seleccionadas</h5>
      <ul>
        <li v-for="(luz, index) in listofLightLongName" :key="index">
        {{ luz }}</li>
      </ul>
      <hr>
      <h5>Diagnositco realizado, se recomienda: </h5>
      <p>PLACEHOLDER</p>
      </b-modal>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { LuzVM } from "@/utilities/viewmodels"
import LucesService from "@/services/LucesService"

export default defineComponent({
  data() {
    return {
      luces: [
        {
          Name: 'r1',
          imageName: "luz1",
          isSelected: false,
          longName: "Luz de carretera encendida"
        },
        {
          Name: 'r2',
          imageName: "luz2",
          isSelected: false,
          longName: "Luz de circulación diurna activada"
        },
        {
          Name: 'r3',
          imageName: "luz3",
          isSelected: false,
          longName: "Intermitente izquierdo encendido"
        },
        {
          Name: 'r4',
          imageName: "luz4",
          isSelected: false,
          longName: "Intermitente derecho encendido"
        },
        {
          Name: 'r5',
          imageName: "luz5",
          isSelected: false,
          longName: "Motor en marcha"
        },
        {
          Name: 'r6',
          imageName: "luz6",
          isSelected: false,
          longName: "Regulador de velocidad regulado. Control de crucero adaptativo conectado y activo"
        },
        {
          Name: 'r7',
          imageName: "luz7",
          isSelected: false,
          longName: "El ABS no funciona correctamente"
        },
        {
          Name: 'r8',
          imageName: "luz8",
          isSelected: false,
          longName: "Avería en el sistema de airbags y pretensores de los cinturones"
        },
        {
          Name: 'r9',
          imageName: "luz9",
          isSelected: false,
          longName: "Nivel del tanque de lava cristales bajo"
        },
        {
          Name: 'r10',
          imageName: "luz10",
          isSelected: false,
          longName: "Nivel de aceite insuficiente"
        },
        {
          Name: 'r11',
          imageName: "luz11",
          isSelected: false,
          longName: "Avería en el ESC"
        },
        {
          Name: 'r12',
          imageName: "luz12",
          isSelected: false,
          longName: "Fallo en el alumbrado del vehículo"
        },
        {
          Name: 'r13',
          imageName: "luz13",
          isSelected: false,
          longName: "Presión de inflado de los neumáticos demasiado baja"
        },
        {
          Name: 'r14',
          imageName: "luz14",
          isSelected: false,
          longName: "Avería en el catalizador"
        },
        {
          Name: 'r15',
          imageName: "luz15",
          isSelected: false,
          longName: "Pastillas de freno delanteras desgastadas"
        },
        {
          Name: 'r16',
          imageName: "luz16",
          isSelected: false,
          longName: "Depósito de combustible casi vacío"
        },
        {
          Name: 'r17',
          imageName: "luz17",
          isSelected: false,
          longName: "Precalentamiento del motor diesel"
        },
        {
          Name: 'r18',
          imageName: "luz18",
          isSelected: false,
          longName: "Cinturón de seguridad desabrochado"
        },
        {
          Name: 'r19',
          imageName: "luz19",
          isSelected: false,
          longName: "Cajuela abierta"
        },
        {
          Name: 'r20',
          imageName: "luz20",
          isSelected: false,
          longName: "Puerta abierta"
        },
        {
          Name: 'r21',
          imageName: "luz21",
          isSelected: false,
          longName: "Cambio de doble embrague DSG sobrecalentado"
        },
        {
          Name: 'r22',
          imageName: "luz22",
          isSelected: false,
          longName: "Falla de batería"
        },
        {
          Name: 'r23',
          imageName: "luz23",
          isSelected: false,
          longName: "Falla de la dirección asistida electromecánica"
        },
        {
          Name: 'r24',
          imageName: "luz24",
          isSelected: false,
          longName: "Control de crucero adaptativo (ACC) no disponible"
        },
        {
          Name: 'r25',
          imageName: "luz25",
          isSelected: false,
          longName: "Freno de mano puesto"
        },
        {
          Name: 'r26',
          imageName: "luz26",
          isSelected: false,
          longName: "Nivel de aceite del motor bajo o avería en el sistema de aceite del motor"
        },
        {
          Name: 'r27',
          imageName: "luz27",
          isSelected: false,
          longName: "Filtro de partículas diesel saturado de hollín"
        },
        {
          Name: 'r28',
          imageName: "luz28",
          isSelected: false,
          longName: "Avería en el cambio automático"
        },
        {
          Name: 'r29',
          imageName: "luz29",
          isSelected: false,
          longName: "Estado de carga de la batería móvil"
        },
        {
          Name: 'r30',
          imageName: "luz30",
          isSelected: false,
          longName: "Régimen del motor limitado"
        },
        {
          Name: 'r31',
          imageName: "luz31",
          isSelected: false,
          longName: "Avería en el sistema híbrido"
        },
        {
          Name: 'r32',
          imageName: "luz32",
          isSelected: false,
          longName: "ACC activo. Vehículo por delante"
        },
        {
          Name: 'r33',
          imageName: "luz33",
          isSelected: false,
          longName: "Luz trasera antiniebla encendida"
        },
        {
          Name: 'r34',
          imageName: "luz34",
          isSelected: false,
          longName: "Tapón del depósito de combustible abierto"
        },
        {
          Name: 'r35',
          imageName: "luz35",
          isSelected: false,
          longName: "ACC activo. Ningún vehículo por delante"
        },
        {
          Name: 'r36',
          imageName: "luz36",
          isSelected: false,
          longName: "Asistente de luz de carretera conectado"
        },
        {
          Name: 'r37',
          imageName: "luz37",
          isSelected: false,
          longName: "Sistema Start-Stop disponible"
        },
        {
          Name: 'r38',
          imageName: "luz38",
          isSelected: false,
          longName: "Preaviso de servicio"
        },
        {
          Name: 'r39',
          imageName: "luz39",
          isSelected: false,
          longName: "Motor en marcha"
        },
        {
          Name: 'r40',
          imageName: "luz40",
          isSelected: false,
          longName: "Temperatura exterior inferior a +4º C."
        }
      ] as LuzVM[],
      lightsSelected: [{}] as LuzVM[],
      listOfLightsShortName: [] as string[],
      listofLightLongName: [] as string[],
      mensajeRespuesta: ""
    }
  },
  methods: {
    lightSelected(light: LuzVM) {
      console.log(light);
      if(light.isSelected) {
          light.isSelected = false;
          let indice = this.lightsSelected.indexOf(light);
          this.lightsSelected.splice(indice, 1);
        let indice2 = this.listOfLightsShortName.indexOf(light.Name);
        this.listOfLightsShortName.splice(indice2, 1);
        let indice3 = this.listofLightLongName.indexOf(light.Name);
        this.listofLightLongName.splice(indice3, 1);
        LucesService.$GetLightResponse(this.listOfLightsShortName)
        .then((response) => {
          this.mensajeRespuesta = response.data;
        })
        .catch((error) => {
          console.log(error);
        })
      }
      else
      {
        this.listOfLightsShortName.push(light.Name);
        this.listofLightLongName.push(light.longName)
        light.isSelected = true;
        this.lightsSelected.push(light);
          this.lightsSelected = this.lightsSelected.filter((item, index) => {
          return this.lightsSelected.indexOf(item) === index;
      })
      }
      
    },
    borrarSeleccion() {
      this.lightsSelected.forEach((light) => {
        light.isSelected = false;
      })
      this.listOfLightsShortName = [];
      this.listofLightLongName = [];
    }
  }
});
</script>

<style scoped>
.luces-wrapper {
  display: flex;
  width: 10%;
  align-items: center;
  justify-content: center;
  box-shadow: 2px;
  cursor: pointer;
}
.luces-wrapper:focus {
  background-color: aqua;

} 
.active-light {
  border-radius: 10px;
  background: linear-gradient(217deg, #6bf755b5, rgba(255,0,0,0) 70.71%),
            linear-gradient(127deg, #6bf755b5, rgba(0,255,0,0) 70.71%),
            linear-gradient(336deg, #6bf755b5, rgba(0,0,255,0) 70.71%);

}

.inactive-light {
  background-color: rgb(255, 255, 255);
}
.full {
  width: 100%;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  height: calc(100vh - 200px);
}
.flex-col {
  display: flex;
  flex-direction: column;
}
.titulo {
  margin-bottom: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 20px;
}
.danger-outline {
  background-color: white;
  font-size: 18px;
  border: 2px red solid;
  border-radius: 10px;
  cursor: pointer;
}
.danger-outline:hover {
  background-color: rgba(250, 36, 36, 0.585);
  border: 2px white solid;
  color: white;
}

@media screen and (max-width: 960px)  {
  .luces-wrapper {
    width: 30%;
  }
  .full {
    gap: 5px;
  }
}
@media screen and (max-width: 700px)  {
  .luces-wrapper {
    width: 40%;
  }
  .full {
    gap: 10px;
  }
}
</style>