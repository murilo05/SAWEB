<template>
  <div>
    <div id="inputsClientes">
      <input id="nomeClientes" type="text" placeholder="Nome" v-model="inputNomeCliente"/>
      <input id="telefoneClientes" type="text" placeholder="Telefone: 47 999999999" v-model="inputTelefone"/>
      <input id="cpfClientes" type="text" placeholder="CPF: 123.456.789-10" v-model="inputcpf"/>
      <input id="nascimentoClientes" type="date" placeholder="Nascimento" v-model="inputNascimento"/>
      <input id="ruaClientes" type="text" placeholder="Rua" v-model="inputRua"/>
      <input id="numeroClientes" type="text" placeholder="Número" v-model="inputNrua"/>
      <input id="bairroClientes" type="text" placeholder="Bairro" v-model="inputBairro"/>
      <input id="cidadeClientes" type="text" placeholder="Cidade" v-model="inputCidade"/>
      <input id="estadoClientes" type="text" placeholder="UF" v-model="inputEstado"/>
      <input id="complementoClientes" type="text" placeholder="Complemento" v-model="inputComplemento"/>
    </div>
    <div id="botoesClientes">
      <button @click="Salvar">Salvar</button>
      <button>Pesquisar</button>
      <button>Excluir</button>
    </div>
  </div>
</template>

<script>
const axios = require("axios");
export default {
  methods:{
    Salvar:function(){
      axios.post("https://localhost:44399/api/Clientes",{
        nome: this.inputNomeCliente,
        telefone: this.inputTelefone,
        cpf: this.inputcpf,
        dataNascimento: this.inputNascimento,
        rua: this.inputRua,
        numero: this.inputNrua,
        bairro: this.inputBairro,
        uf: this.inputEstado,
        cidade: this.inputCidade,
        complemento: this.inputComplemento,
        cargo: this.inputFuncao
      })
      .then(resp => {
        this.$store.commit("cadastrarCliente", resp.data);
      });
      alert("Cliente Salvo com Sucesso!");
    }
  }
};
</script>

<style>
#inputsClientes {
  position: relative;
  top: 50px;
}
#inputsClientes input {
  text-align: center;
  position: relative;
  height: 25px;
  border-radius: 5px;
  border: none;
}
#inputsClientes #nomeClientes {
  top: 50px;
  left: 50px;
  width: 350px;
}
#inputsClientes #telefoneClientes {
  top: 50px;
  left: 70px;
  width: 200px;
}
#inputsClientes #cpfClientes {
  top: 100px;
  width: 135px;
  left: -498px;
}
#inputsClientes #nascimentoClientes {
  top: 100px;
  left: -473px;
  width: 130px;
}
#inputsClientes #emailClientes {
  top: 100px;
  left: -448px;
  width: 255px;
}
#inputsClientes #ruaClientes {
  top: 150px;
  width: 250px;
  left: -1017px;
}
#inputsClientes #numeroClientes {
  top: 123px;
  width: 60px;
  left: 330px;
}
#inputsClientes #bairroClientes {
  top: 123px;
  left: 350px;
  width: 215px;
}
#inputsClientes #cidadeClientes {
  top: 175px;
  left: -220px;
  width: 230px;
}
#inputsClientes #estadoClientes {
  top: 175px;
  width: 30px;
  left: -200px;
}
#inputsClientes #complementoClientes {
  top: 175px;
  left: -180px;
  width: 270px;
}
#botoesClientes {
  position: relative;
  top: 280px;
  left: 140px;
}
#botoesClientes button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  border-radius: 4px;
  margin-left: 40px;
}
</style>