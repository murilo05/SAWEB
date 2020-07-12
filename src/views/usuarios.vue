<template>
  <div>
    <menuu />
    <inputsUsuarios />
    <tabela-usuarios />
  </div>
</template>

<script>
import menuu from "../components/menu.vue";
import inputsUsuarios from "../components/inputsUsuarios.vue";
import tabelaUsuarios from "../components/tabelaUsuarios.vue";

export default {
  components: {
    menuu,
    tabelaUsuarios,
    inputsUsuarios
  }
};
</script>

<style>
</style>