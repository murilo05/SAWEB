<template>
  <div id="tblProdutos">
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>ITEM</th>
          <th>VALOR</th>
        </tr>
      </thead>
      <tbody>
       <tr v-for="produto in this.$store.state.produtos" :key="produto.id">
          <td>{{produto.$id}}</td>
          <td>{{produto.nome}}</td>
          <td>{{produto.preco}}</td>
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
#tblProdutos {
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
  margin: 30px;
  border: 1px solid black;
  background: rgb(151, 182, 210);
  width: 600px;
  height: 200px;
}
#tblProdutos table,
#tblProdutos td {
  text-align: center;
  width: 600px;
}
#tblProdutos th {
  font-size: 150%;
}



</style>