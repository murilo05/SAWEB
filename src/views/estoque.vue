<template>
  <div>
    <menuu />
    <menuProdutos />
    <tabelaMovimentacoesEstoque />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import menuProdutos from "../components/menuProdutos.vue";
import tabelaMovimentacoesEstoque from "../components/tabelaMovimentacoesEstoque.vue";
export default {
  components: {
    menuu,
    menuProdutos,
    tabelaMovimentacoesEstoque
  }
};
</script>

<style>
</style>