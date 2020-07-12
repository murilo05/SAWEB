<template>
  <div id="tblProdutosProdutosPai">
    <div id="tblProdutosProdutos">
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
    <div id="btnProdutosProdutos" v-for="produto in this.$store.state.produtos" :key="produto.id">
      <input type="text" placeholder="Descrição" v-model="inputDescricao"/>
      <input type="number" placeholder="Preço" v-model="inputPreco"/>
      <button @click="Salvar">Criar</button>
      <button>Excluir</button>
    </div>
  </div>
</template>

<script>
const axios = require("axios");
export default {
  methods: {
    Salvar:function(){
      axios.post("https://localhost:44399/api/Produtos",{
        nome: this.inputDescricao,
        preco: this.inputPreco
      })
      .then(resp => {
        this.$store.commit("cadastrarProduto", resp.data);
      });
      alert("Produto Salvo com Sucesso!");
    }
  }
};
</script>

<style>
#tblProdutosProdutosPai #tblProdutosProdutos {
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
#tblProdutosProdutosPai #tblProdutosProdutos table {
  text-align: center;
  width: 600px;
}
#tblProdutosProdutosPai #tblProdutosProdutos th {
  font-size: 150%;
}
#tblProdutosProdutosPai #btnProdutosProdutos {
  position: relative;
  bottom: 460px;
  left: 530px;
}
#tblProdutosProdutosPai #btnProdutosProdutos button {
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
#tblProdutosProdutosPai #btnProdutosProdutos input {
  margin: 0 5px 0 5px;
  text-align: center;
  border: none;
  height: 20px;
  border-radius: 5px;
  width: 150px;
  position: relative;
}
</style>