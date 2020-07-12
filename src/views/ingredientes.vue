<template>
  <div>
    <menuu />
    <menuProdutos />
    <tabelaIngredientes />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import menuProdutos from "../components/menuProdutos.vue";
import tabelaIngredientes from "../components/tabelaIngredientes.vue";
export default {
  components: {
    menuu,
    menuProdutos,
    tabelaIngredientes
  }
};
</script>

<style>
</style>