<template>
  <div id="tblClientes">
    <table>
      <thead>
        <tr>
          <th>Nome</th>
          <th>CPF</th>
          <th>Telefone</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="cliente in this.$store.state.clientes" :key="cliente.telefone">
          <td>{{ cliente.nome }}</td>
          <td>{{ cliente.cpf }}</td>
          <td>{{ cliente.telefone }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {};
</script>

<style>
#tblClientes {
  background: rgb(151, 182, 210);
  width: 600px;
  height: 300px;
  position: relative;
  left: 700px;
  border-radius: 10px;
  overflow-x: hidden;
  overflow-y: scroll;
}
#tblClientes table {
  width: 550px;
  text-align: center;
}
#tblClientes th {
  font-size: 150%;
}
</style>