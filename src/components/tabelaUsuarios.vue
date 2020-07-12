<template>
  <div id="tblUsuarios">
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Usuário</th>
        </tr>
      </thead>
      <tbody>
          <tr v-for="usuario in this.$store.state.logins" :key="usuario.id">
          <td>{{ usuario.id }}</td>
          <td>{{ usuario.login }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  
};
</script>

<style>
#tblUsuarios {
  background: rgb(151, 182, 210);
  text-align: center;
  width: 600px;
  height: 300px;
  position: relative;
  top: -240px;
  left: 500px;
  border-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
}
#tblUsuarios table {
  width: 600px;
}
#tblUsuarios th {
  font-size: 150%;
}
</style>