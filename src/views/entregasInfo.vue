<template>
  <div>
    <menuu />
    <tabela-produtos-delivey />
    <tabela-produtos-pedidos-delivey />
    <labels-info-pedido />
  </div>
</template>

<script>
import tabelaProdutosDelivey from "../components/tabelaProdutosDelivery.vue";
import tabelaProdutosPedidosDelivey from "../components/tabelaProdutosPedidosDelivery.vue";
import labelsInfoPedido from "../components/labelsInfoPedido.vue";
import menuu from "../components/menu.vue";
export default {
  components: {
    menuu,
    tabelaProdutosDelivey,
    tabelaProdutosPedidosDelivey,
    labelsInfoPedido
  }
};
</script>

<style>
</style>