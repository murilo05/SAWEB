<template>
  <div>
    <menuu />
    <inputsClientes />
    <tabelaClientes />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import tabelaClientes from "../components/tabelaClientes.vue";
import inputsClientes from "../components/inputsClientes.vue";
export default {
  components: {
    menuu,
    inputsClientes,
    tabelaClientes
  }
};
</script>

<style>
</style>