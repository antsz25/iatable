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
    {{listOfLights}}
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { LuzVM } from "@/utilities/viewmodels"
import { faL } from "@fortawesome/free-solid-svg-icons";

export default defineComponent({
  data() {
    return {
      luces: [
        {
          Name: 'r1',
          imageName: "luz1",
          isSelected: false
        },
        {
          Name: 'r2',
          imageName: "luz2",
          isSelected: false
        },
        {
          Name: 'r3',
          imageName: "luz3",
          isSelected: false
        },
        {
          Name: 'r4',
          imageName: "luz4",
          isSelected: false
        },
        {
          Name: 'r5',
          imageName: "luz5",
          isSelected: false
        },
        {
          Name: 'r6',
          imageName: "luz6",
          isSelected: false
        },
        {
          Name: 'r7',
          imageName: "luz7",
          isSelected: false
        },
        {
          Name: 'r8',
          imageName: "luz8",
          isSelected: false
        },
        {
          Name: 'r9',
          imageName: "luz9",
          isSelected: false
        },
        {
          Name: 'r10',
          imageName: "luz10",
          isSelected: false
        },
        {
          Name: 'r11',
          imageName: "luz11",
          isSelected: false
        },
        {
          Name: 'r12',
          imageName: "luz12",
          isSelected: false
        },
        {
          Name: 'r13',
          imageName: "luz13",
          isSelected: false
        },
        {
          Name: 'r14',
          imageName: "luz14",
          isSelected: false
        },
        {
          Name: 'r15',
          imageName: "luz15",
          isSelected: false
        },
        {
          Name: 'r16',
          imageName: "luz16",
          isSelected: false
        },
        {
          Name: 'r17',
          imageName: "luz17",
          isSelected: false
        },
        {
          Name: 'r18',
          imageName: "luz18",
          isSelected: false
        },
        {
          Name: 'r19',
          imageName: "luz19",
          isSelected: false
        },
        {
          Name: 'r20',
          imageName: "luz20",
          isSelected: false
        },
        {
          Name: 'r21',
          imageName: "luz21",
          isSelected: false
        },
        {
          Name: 'r22',
          imageName: "luz22",
          isSelected: false
        },
        {
          Name: 'r23',
          imageName: "luz23",
          isSelected: false
        },
        {
          Name: 'r24',
          imageName: "luz24",
          isSelected: false
        },
        {
          Name: 'r25',
          imageName: "luz25",
          isSelected: false
        },
        {
          Name: 'r26',
          imageName: "luz26",
          isSelected: false
        },
        {
          Name: 'r27',
          imageName: "luz27",
          isSelected: false
        },
        {
          Name: 'r28',
          imageName: "luz28",
          isSelected: false
        },
        {
          Name: 'r29',
          imageName: "luz29",
          isSelected: false
        },
        {
          Name: 'r30',
          imageName: "luz30",
          isSelected: false
        },
        {
          Name: 'r31',
          imageName: "luz31",
          isSelected: false
        },
        {
          Name: 'r32',
          imageName: "luz32",
          isSelected: false
        },
        {
          Name: 'r33',
          imageName: "luz33",
          isSelected: false
        },
        {
          Name: 'r34',
          imageName: "luz34",
          isSelected: false
        },
        {
          Name: 'r35',
          imageName: "luz35",
          isSelected: false
        },
        {
          Name: 'r36',
          imageName: "luz36",
          isSelected: false
        },
        {
          Name: 'r37',
          imageName: "luz37",
          isSelected: false
        },
        {
          Name: 'r38',
          imageName: "luz38",
          isSelected: false
        },
        {
          Name: 'r39',
          imageName: "luz39",
          isSelected: false
        },
        {
          Name: 'r40',
          imageName: "luz40",
          isSelected: false
        }
      ] as LuzVM[],
      lightsSelected: [{}] as LuzVM[],
      listOfLights: [] as string[]
    }
  },
  methods: {
    lightSelected(light: LuzVM) {
      console.log(light);
      if(light.isSelected) {
        light.isSelected = false;
        let indice = this.lightsSelected.indexOf(light);
        this.lightsSelected.splice(indice, 1);

        let indice2 = this.listOfLights.indexOf(light.Name);
        this.listOfLights.splice(indice2, 1);
      }
      else
      {
        this.listOfLights.push(light.Name);
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
      this.listOfLights = [];
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