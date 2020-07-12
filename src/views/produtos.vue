<template>
  <div>
    <menuu />
    <menuProdutos />
    <tabelaProdutosProdutos />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import menuProdutos from "../components/menuProdutos.vue";
import tabelaProdutosProdutos from "../components/tabelaProdutosProdutos.vue";
export default {
  components: {
    menuu,
    menuProdutos,
    tabelaProdutosProdutos
  }
};
</script>

<style>
</style>