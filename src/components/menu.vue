<template>
  <div>
    <ul id="menu-superior">
      <router-link to="/mesas">
        <li>Mesas</li>
      </router-link>
      <router-link to="/entregas">
        <li>Entrgas</li>
      </router-link>
      <router-link to="/clientes">
        <li>Clientes</li>
      </router-link>
      <router-link to="/funcionarios">
        <li>Funcionários</li>
      </router-link>
      <router-link to="/produtos">
        <li>Produtos</li>
      </router-link>
      <router-link to="/">
        <li>Sair</li>
      </router-link>
    </ul>
  </div>
</template>

<script>
export default {};
</script>

<style>
#menu-superior {
  line-height: 40px;
  margin: 0;
  display: flex;
  background: rgb(151, 182, 210);
  height: 40px;
  justify-content: center;
  list-style: none;
  width: 100%;
}
#menu-superior li {
  list-style: none;
  display: inline;
  font-style: none;
  text-decoration: none;
  cursor: pointer;
  text-align: center;
  font-size: x-large;
  text-decoration: none;
  color: white;
  margin-right: 50px;
  margin-left: 50px;
}

#menu-superior li:active {
  color: blue;
}
</style>  