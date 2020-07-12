<template>
  <div id="criadorMesas">
    <h3>Criar mesa</h3>
    <input type="number" placeholder="Quantidade de lugares" />
    <button>Criar</button>
  </div>
</template>

<script>
export default {};
</script>

<style>
#criadorMesas {
  border-radius: 10px;
  text-align: center;
  padding: 19px;
  left: 1070px;
  bottom: 530px;
  position: relative;
  border: 1px solid black;
  width: 200px;
  height: 140px;
  background: rgb(151, 182, 210);
  height: 460px;
}
#criadorMesas button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  position: relative;
  top: 270px;
  border-radius: 5px;
}
#criadorMesas input {
  position: relative;
  top: 100px;
  height: 25px;
  text-align: center;
  border-radius: 10px;
  border: none;
}
#criadorMesas h3 {
  font-size: 30px;
}
</style>