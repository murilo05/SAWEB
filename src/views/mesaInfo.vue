<template>
  <div>
    <menuu />
    <h2 id="numeroMesa">Mesa 1</h2>
    <tabela-produtos />
    <tabela-produtos-pedidos />
    <botoesMesaInfo />
  </div>
</template>

<script>
import tabelaProdutos from "../components/tabelaProdutos.vue";
import tabelaProdutosPedidos from "../components/tabelaProdutosPedidos.vue";
import botoesMesaInfo from "../components/botoesMesaInfo.vue";
import menuu from "../components/menu.vue";
export default {
  components: {
    menuu,
    tabelaProdutosPedidos,
    tabelaProdutos,
    botoesMesaInfo
  }
};
</script>

<style>
#numeroMesa {
  font-size: 250%;
  margin: 20px 0 0 40px;
}
</style>