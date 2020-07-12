<template>
  <div id="inputsEntrega">
    <input id="inTel" type="text" placeholder="Telefone" />
    <button id="btnBuscar">Buscar</button>
    <input id="inNom" type="text" placeholder="Nome" />
    <input id="inRua" type="text" placeholder="Rua" />
    <input id="inNum" type="text" placeholder="Número" />
    <input id="inBai" type="text" placeholder="Bairro" />
    <select name="entregador" id>
      <option value selected disabled>Entregador</option>
    </select>
    <input id="inCom" type="text" placeholder="Complemento" />
    <button id="btnLimpar">Limpar</button>
    <button id="btnAdcionar">Adcionar</button>
  </div>
</template>

<script>
export default {};
</script>

<style>
#inputsEntrega {
  width: 450px;
  height: 400px;
  position: relative;
  bottom: 410px;
  left: 60px;
}
#inputsEntrega select {
  width: 150px;
  top: 150px;
  position: relative;
  top: 110px;
  height: 25px;
  border-radius: 5px;
  right: 230px;
}
#inputsEntrega #inTel {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
}
#inputsEntrega #inNom {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  width: 330px;
  position: relative;
  top: 20px;
}
#inputsEntrega #inRua {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 45px;
  width: 330px;
}
#inputsEntrega #inNum {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 90px;
  width: 80px;
  right: 330px;
}
#inputsEntrega #inBai {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 63px;
  left: 100px;
  width: 230px;
}
#inputsEntrega #inCom {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 130px;
  width: 330px;
}
#inputsEntrega #btnBuscar {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  left: 40px;
}
#inputsEntrega #btnLimpar {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  right: 120px;
  top: 80px;
}
#inputsEntrega #btnAdcionar {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  left: 100px;
  top: 150px;
}
</style>