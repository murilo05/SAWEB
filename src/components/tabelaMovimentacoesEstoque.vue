<template>
  <div id="tblEstoquePai">
    <div id="tblEstoque">
      <table>
        <thead>
          <tr>
            <th>Item</th>
            <th>Quantidade</th>
            <th>Movimentação</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Laranja</td>
            <td>500</td>
            <td>Entrada</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="botoesEstoque">
      <select name id>
        <option value selected disable>Ingrediente</option>
      </select>
      <input type="number" placeholder="Quantidade" />
      <button>Registrar Entrada</button>
      <button>Registrar Saída</button>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
#tblEstoque {
  background: rgb(151, 182, 210);
  text-align: center;
  width: 600px;
  height: 300px;
  position: relative;
  top: -500px;
  left: 500px;
  border-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
}
#tblEstoque table {
  width: 600px;
  text-align: center;
}
#tblEstoque th {
  font-size: 150%;
}
#tblEstoquePai #botoesEstoque {
  position: relative;
  bottom: 450px;
  left: 530px;
}
#tblEstoquePai #botoesEstoque button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  position: relative;
  border-radius: 4px;
  left: 20px;
  margin-left: 20px;
  bottom: 10px;
}
#tblEstoquePai #botoesEstoque input,
#tblEstoquePai #botoesEstoque select {
  margin: 0 5px 0 5px;
  text-align: center;
  border: none;
  height: 20px;
  border-radius: 5px;
  width: 150px;
}
</style>