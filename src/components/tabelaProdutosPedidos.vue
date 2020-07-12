<template>
  <div id="tblProdutosPedidos">
    <table>
      <thead>
        <tr>
          <th>ITEM</th>
          <th>QUANTIDADE</th>
          <th>VALOR</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Pizza de calabresa</td>
          <td>2</td>
          <td>R$20,00</td>
        </tr>
        <tr>
          <td>Suco de uva</td>
          <td>3</td>
          <td>R$21,00</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {};
</script>

<style>
#tblProdutosPedidos {
  margin: 30px;
  border: 1px solid black;
  background: rgb(151, 182, 210);
  width: 600px;
  height: 200px;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
}
#tblPtblProdutosPedidosrodutos table,
#tblProdutosPedidos td {
  text-align: center;
  width: 600px;
}
#tblProdutosPedidos th {
  font-size: 150%;
}
</style>