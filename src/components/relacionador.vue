<template>
  <div id="relacionadorPai">
    <div id="relacionador">
      <table>
        <thead>
          <tr>
            <th>Produto</th>
            <th>Ingrediente</th>
            <th class="celulaValor">Quantidade</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Suco de laranja</td>
            <td>Laranja</td>
            <td>3</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="botoes">
      <select name="produtos" id>
        <option value selected disabled>Ingrediente</option>
      </select>
      <input type="number" placeholder="Quantidade" />
      <select name="ingrediente" id>
        <option value selected disabled>Produto</option>
      </select>
      <button>Relacionar</button>
      <button id="btnApagarRelacao">Apagar relação</button>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
#relacionadorPai #relacionador {
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
#relacionadorPai #relacionador table {
  width: 600px;
}
#relacionadorPai #relacionador th {
  font-size: 150%;
}
#relacionadorPai #botoes {
  position: relative;
  bottom: 450px;
  left: 450px;
}
#relacionadorPai #botoes button {
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
#relacionadorPai #botoes #btnApagarRelacao {
  bottom: 7px;
}
#relacionadorPai #botoes select,
#relacionadorPai #botoes input {
  width: 150px;
  margin: 0 5px 0 5px;
  text-align: center;
  border: none;
  height: 20px;
  border-radius: 5px;
}
</style>