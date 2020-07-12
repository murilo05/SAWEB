<template>
  <div>
    <menuu />
    <painel-mesas />
    <criador-mesas />
  </div>
</template>

<script>
import criadorMesas from "../components/criadorMesas.vue";
import painelMesas from "../components/painelMesas.vue";
import menuu from "../components/menu.vue";
export default {
  components: {
    menuu,
    painelMesas,
    criadorMesas
  }
};
</script>

<style>
</style>