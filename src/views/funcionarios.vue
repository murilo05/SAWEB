<template>
  <div>
    <menuu />
    <inputsFuncionarios />
    <tabelaFuncionarios />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import inputsFuncionarios from "../components/inputsFuncionarios.vue";
import tabelaFuncionarios from "../components/tabelaFuncionarios.vue";
export default {
  components: {
    menuu,
    inputsFuncionarios,
    tabelaFuncionarios
  }
};
</script>

<style>
</style>