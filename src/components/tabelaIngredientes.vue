<template>
  <div id="paiTblIngredientes">
    <div id="tblIngredientes">
      <table>
        <thead>
          <tr>
            <th>Id</th>
            <th>Descrição</th>
            <th>Quantidade</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Laranja</td>
            <td>500</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="btnIngredientes">
      <input type="Nome" placeholder="Novo Ingrediente" />
      <button>Criar</button>
      <button>Excluir</button>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
#tblIngredientes {
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
#tblIngredientes th {
  font-size: 150%;
}
#paiTblIngredientes #tblIngredientes table {
  text-align: center;
  width: 600px;
}
#paiTblIngredientes #btnIngredientes {
  position: relative;
  bottom: 470px;
  left: 620px;
}
#paiTblIngredientes #btnIngredientes button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  position: relative;
  border-radius: 4px;
  left: 20px;
  margin-left: 20px;
}
#paiTblIngredientes #btnIngredientes input {
  margin: 0 5px 0 5px;
  text-align: center;
  border: none;
  height: 20px;
  border-radius: 5px;
  width: 180px;
}
</style>