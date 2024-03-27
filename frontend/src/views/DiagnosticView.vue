<template>
  <div class="flex-col">
    <div class="titulo">
      <h2>Seleccione una o más luces para obtener diagnostico!</h2>
    </div>
    <div class="full">
      <div v-for="(luz, index) in luces" :key="index" class="luces-wrapper" tabindex="-1" @click="lightSelected(luz.Name)">
        <img :src="require(`@/assets/${luz.imageName}.png`)" width="100">
      </div>
      {{ lightsSelected }}
    </div>
  </div>
</template>

<script lang="ts">
export default {
  data() {
    return {
      luces: [
        {
          Name: 'r1',
          imageName: "luz1"
        },
        {
          Name: 'r2',
          imageName: "luz2"
        },
        {
          Name: 'r3',
          imageName: "luz3"
        },
        {
          Name: 'r4',
          imageName: "luz4"
        },
        {
          Name: 'r5',
          imageName: "luz5"
        },
        {
          Name: 'r6',
          imageName: "luz6"
        },
        {
          Name: 'r7',
          imageName: "luz7"
        },
        {
          Name: 'r8',
          imageName: "luz8"
        },
        {
          Name: 'r9',
          imageName: "luz9"
        },
        {
          Name: 'r10',
          imageName: "luz10"
        },
        {
          Name: 'r11',
          imageName: "luz11"
        },
        {
          Name: 'r12',
          imageName: "luz12"
        },
        {
          Name: 'r13',
          imageName: "luz13"
        },
        {
          Name: 'r14',
          imageName: "luz14"
        },
        {
          Name: 'r15',
          imageName: "luz15"
        },
        {
          Name: 'r16',
          imageName: "luz16"
        },
        {
          Name: 'r17',
          imageName: "luz17"
        },
        {
          Name: 'r18',
          imageName: "luz18"
        },
        {
          Name: 'r19',
          imageName: "luz19"
        },
        {
          Name: 'r20',
          imageName: "luz20"
        },
        {
          Name: 'r21',
          imageName: "luz21"
        },
        {
          Name: 'r22',
          imageName: "luz22"
        },
        {
          Name: 'r23',
          imageName: "luz23"
        },
        {
          Name: 'r24',
          imageName: "luz24"
        },
        {
          Name: 'r25',
          imageName: "luz25"
        },
        {
          Name: 'r26',
          imageName: "luz26"
        },
        {
          Name: 'r27',
          imageName: "luz27"
        },
        {
          Name: 'r28',
          imageName: "luz28"
        },
        {
          Name: 'r29',
          imageName: "luz29"
        },
        {
          Name: 'r30',
          imageName: "luz30"
        },
        {
          Name: 'r31',
          imageName: "luz31"
        },
        {
          Name: 'r32',
          imageName: "luz32"
        },
        {
          Name: 'r33',
          imageName: "luz33"
        },
        {
          Name: 'r34',
          imageName: "luz34"
        },
        {
          Name: 'r35',
          imageName: "luz35"
        },
        {
          Name: 'r36',
          imageName: "luz36"
        },
        {
          Name: 'r37',
          imageName: "luz37"
        },
        {
          Name: 'r38',
          imageName: "luz38"
        },
        {
          Name: 'r39',
          imageName: "luz39"
        },
        {
          Name: 'r40',
          imageName: "luz40"
        }
      ],
      lightsSelected: []
    }
  },
  methods: {
    lightSelected(light: string) {
      this.lightsSelected.push(light);
      this.lightsSelected = this.lightsSelected.filter((item, index) => {
       return this.lightsSelected.indexOf(item) === index;
      })
    },
  }
}
</script>

<style scoped>
.luces-wrapper {
  display: flex;
  width: 10%;
  align-items: center;
  justify-content: center;
  border-radius: 100px;
}
.luces-wrapper:focus {
  background-color: aqua;

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
  margin-bottom: 40px;
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