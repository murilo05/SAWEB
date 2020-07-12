<template>
  <div>
    <menuu />
    <tbl-entregas />
    <inputs-entrega />
  </div>
</template>

<script>
import tblEntregas from "../components/tblEntregas.vue";
import inputsEntrega from "../components/inputsEntrega.vue";
import menuu from "../components/menu.vue";
export default {
  components: {
    menuu,
    tblEntregas,
    inputsEntrega
  }
};
</script>

<style>
</style>