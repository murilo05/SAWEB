<template>
  <div>
    <menuu />
    <menuProdutos />
    <relacionador />
  </div>
</template>

<script>
import relacionador from "../components/relacionador.vue";
import menuu from "../components/menu.vue";
import menuProdutos from "../components/menuProdutos.vue";
export default {
  components: {
    menuu,
    menuProdutos,
    relacionador
  }
};
</script>

<style>
</style>