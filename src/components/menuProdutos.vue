<template>
  <div id="menuProdutos">
    <ul>
      <router-link to="/produtos">
        <li>Produtos</li>
      </router-link>
      <router-link to="/ingredientes">
        <li>Ingredientes</li>
      </router-link>
      <router-link to="/produtosIngredientes">
        <li>Relações</li>
      </router-link>
      <router-link to="/estoque">
        <li>Estoque</li>
      </router-link>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style>
#menuProdutos ul {
  background: rgb(151, 182, 210);
  height: 500px;
  width: 230px;
  position: relative;
  margin: 40px 0 0 0;
  list-style: none;
  border-radius: 10px;
  position: relative;
  left: 20px;
}
#menuProdutos li {
  list-style: none;
  font-style: none;
  text-decoration: none;
  cursor: pointer;
  text-align: center;
  font-size: x-large;
  text-decoration: none;
  color: white;
  margin: 50px 0 50px 0;
  position: relative;
  left: -20px;
  top: 50px;
}
</style>