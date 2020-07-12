<template>
  <div id="botoesMesaInfo">
    <input id="quantidade" type="number" placeholder="Quantidade" />
    <button>Incluir Item</button>
    <button>Ocupar</button>
    <button>Pedir a conta</button>
    <button>Apagar Mesa</button>
    <button id="salvaAnotacao">Salvar Anotações</button>
    <h3>Anotações</h3>
    <textarea id="anotacoes" cols="30" rows="10"></textarea>
    <h4>Total: R$</h4>
    <h4>41.00</h4>
  </div>
</template>

<script>
export default {};
</script>

<style>
#botoesMesaInfo {
  height: 440px;
  width: 100px;
  position: relative;
  left: 650px;
  bottom: 455px;
  text-align: center;
}
#botoesMesaInfo #quantidade {
  width: 90px;
  text-align: center;
  margin-bottom: 30px;
  border-radius: 5px;
  border: none;
}
#botoesMesaInfo button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 1px solid black;
  border-radius: 4px;
  margin: 10px;
}
#anotacoes {
  position: relative;
  height: 200px;
  width: 400px;
  left: 200px;
  bottom: 310px;
  border-radius: 10px;
  padding: 10px;
  font-size: x-large;
  resize: none;
}
#botoesMesaInfo h3 {
  position: relative;
  left: 350px;
  bottom: 300px;
  font-size: 150%;
}
#salvaAnotacao {
  position: relative;
  top: 50px;
  left: 350px;
}
#botoesMesaInfo h4 {
  position: relative;
  bottom: 350px;
  font-size: 150%;
}
</style>