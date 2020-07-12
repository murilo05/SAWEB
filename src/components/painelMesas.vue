<template>
  <div id="painelMesas">
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
    <div class="mesa" @click="verMesa()">
      <h3 @click="verMesa()">Mesa 1</h3>
      <h4>4 Lugares</h4>
      <img class="foto" src="../assets/mesas.png" alt="mesa" @click="verMesa()" />
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    verMesa: function() {
      this.$router.push("mesaInfo");
    }
  }
};
</script>

<style>
#painelMesas {
  border: 1px solid black;
  padding: 20px 10px 20px 20px;
  height: 460px;
  width: 990px;
  margin: 30px;
  background: rgb(151, 182, 210);
  display: flex;
  flex-wrap: wrap;
  overflow-y: scroll;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
}
#painelMesas {
  user-select: none;
}
#painelMesas .mesa {
  padding: 0px 10px 10px 10px;
  width: 130px;
  height: 130px;
  border: 1px solid red;
  background: white;
  text-align: center;
  margin: 0 10px 10px 0;
  border-radius: 10px;
}
#painelMesas .mesa .foto {
  width: 130px;
  height: 130px;
  margin: 0px;
  position: relative;
  bottom: 20px;
}
#painelMesas .mesa h3 {
  margin: 0;
  position: relative;
  font-size: 200%;
}
#painelMesas .mesa h4 {
  margin: 0;
  position: relative;
  font-size: 100%;
}
</style>