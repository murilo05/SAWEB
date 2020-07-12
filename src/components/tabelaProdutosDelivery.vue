<template>
  <div>
    <div id="tblProdutosDelivery">
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
    <input id="qtdDelivery" type="number" placeholder="Quantidade" />
    <button id="btnAdcionar">Adcionar</button>
  </div>
</template>

<script>
export default {};
</script>
<style>
#tblProdutosDelivery {
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
  margin: 30px;
  border: 1px solid black;
  background: rgb(151, 182, 210);
  width: 600px;
  height: 200px;
  position: relative;
  left: 600px;
}
#tblProdutosDelivery table,
#tblProdutosDelivery td {
  text-align: center;
  width: 600px;
}
#tblProdutosDelivery th {
  font-size: 150%;
}
#btnAdcionar {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  left: 800px;
  top: -20px;
}
#qtdDelivery {
  position: relative;
  top: -20px;
  left: 750px;
  text-align: center;
  border-radius: 5px;
}
</style>