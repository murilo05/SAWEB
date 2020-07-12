<template>
  <div id="labelsInfoPedido">
    <label id="lblTel">
      <span>Telefone:</span> 47 991017734
    </label>
    <br />
    <label id="lblNom">
      <span>Nome:</span> Michel Vinícius Venske Pereira
    </label>
    <br />

    <label id="lblEnd">
      <span>Endereço:</span> Rua dos Hibiscos, 143
      <br />Itoupava Norte
    </label>
    <br />

    <label id="lblEnt">
      <span>Entregador:</span> José
    </label>
    <br />

    <label id="lblCom">
      <span>Complemento:</span> Apartamento
    </label>
    <textarea name="obs" id cols="30" rows="10" placeholder="Observações"></textarea>
  </div>
</template>

<script>
export default {};
</script>

<style>
#labelsInfoPedido {
  width: 520px;
  height: 500px;
  position: relative;
  bottom: 525px;
  left: 100px;
  font-size: 150%;
  overflow: visible;
}
#labelsInfoPedido span {
  font-weight: bold;
}
#labelsInfoPedido #lblTel {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  width: 330px;
  position: relative;
  top: 20px;
}
#labelsInfoPedido #lblNom {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  width: 330px;
  position: relative;
  top: 50px;
  left: 0px;
}
#labelsInfoPedido #lblEnd {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 75px;
  width: 330px;
}
#labelsInfoPedido #lblCom {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 125px;
  width: 330px;
}
#labelsInfoPedido #lblEnt {
  border-radius: 5px;
  border: none;
  height: 25px;
  text-align: center;
  position: relative;
  top: 100px;
  width: 330px;
}
#labelsInfoPedido textarea {
  position: relative;
  top: 150px;
  border-radius: 10px;
  text-align: center;
  font-size: 120%;
  height: 150px;
}
</style>