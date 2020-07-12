<template>
  <div>
    <div id="inputsFuncionarios">
      <input id="nomeFuncionarios" type="text" placeholder="Nome" v-model="inputNomeFuncionario"/>
      <input id="telefoneFuncionarios" type="text" placeholder="Telefone: 47 999999999" v-model="inputTelefone" />
      <input id="cpfFuncionarios" type="text" placeholder="CPF: 123.456.789-10" v-model="inputcpf"/>
      <input id="nascimentoFuncionarios" type="date" placeholder="Nascimento" v-model="inputNascimento"/>
      <input id="ruaFuncionarios" type="text" placeholder="Rua" v-model="inputRua"/>
      <input id="numeroFuncionarios" type="text" placeholder="Número" v-model="inputNrua"/>
      <input id="bairroFuncionarios" type="text" placeholder="Bairro" v-model="inputBairro"/>
      <input id="cidadeFuncionarios" type="text" placeholder="Cidade" v-model="inputCidade"/>
      <input id="estadoFuncionarios" type="text" placeholder="UF" v-model="inputEstado" />
      <input id="complementoFuncionarios" type="text" placeholder="Complemento"  v-model="inputComplemento"/>
      <select name="funcao" id="funcao" v-model="inputFuncao">
        <option value selected disabled>Função</option>
        <option value>Entregador</option>
        <option value>Cozinheiro</option>
        <option value>Gerente</option>
        <option value>Garçom</option>
        <option value>Caixa</option>
      </select>
    </div>
    <div id="botoesFuncionarios">
      <button @click="Salvar">Salvar</button>
      <button>Pesquisar</button>
      <button>Excluir</button>
      <button id="user" @click="irUsers()">Criar Usuário</button>
    </div>
  </div>
</template>

<script>
const axios = require("axios");
export default {
  methods: {
    irUsers: function() {
      this.$router.push("usuarios");
    },
    Salvar:function(){
      axios.post("https://localhost:44399/api/Funcionarios",{
        nome: this.inputNomeFuncionario,
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
        this.$store.commit("cadastrarFuncionario", resp.data);
      });
      alert("Usuário Salvo com Sucesso!");
  }
  }
}
</script>

<style>
#inputsFuncionarios {
  position: relative;
  top: 50px;
}
#inputsFuncionarios input {
  text-align: center;
  position: relative;
  height: 25px;
  border-radius: 5px;
  border: none;
}
#inputsFuncionarios #funcao {
  position: relative;
  height: 25px;
  border-radius: 5px;
  width: 150px;
  left: -330px;
  top: 115px;
}
#inputsFuncionarios #nomeFuncionarios {
  top: 50px;
  left: 50px;
  width: 350px;
}
#inputsFuncionarios #telefoneFuncionarios {
  top: 50px;
  left: 70px;
  width: 200px;
}
#inputsFuncionarios #cpfFuncionarios {
  top: 100px;
  width: 135px;
  left: -498px;
}
#inputsFuncionarios #nascimentoFuncionarios {
  top: 100px;
  left: -473px;
  width: 130px;
}
#inputsFuncionarios #emailFuncionarios {
  top: 100px;
  left: -448px;
  width: 255px;
}
#inputsFuncionarios #ruaFuncionarios {
  top: 180px;
  width: 250px;
  left: -1017px;
}
#inputsFuncionarios #numeroFuncionarios {
  top: 153px;
  width: 60px;
  left: 330px;
}
#inputsFuncionarios #bairroFuncionarios {
  top: 153px;
  left: 350px;
  width: 215px;
}
#inputsFuncionarios #cidadeFuncionarios {
  top: 205px;
  left: -220px;
  width: 230px;
}
#inputsFuncionarios #estadoFuncionarios {
  top: 205px;
  width: 30px;
  left: -200px;
}
#inputsFuncionarios #complementoFuncionarios {
  top: 205px;
  left: -180px;
  width: 270px;
}
#botoesFuncionarios {
  position: relative;
  top: 280px;
  left: 140px;
}
#botoesFuncionarios button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  border-radius: 4px;
  margin-left: 40px;
}
#botoesFuncionarios #user {
  position: relative;
  top: 100px;
  left: 650px;
  width: 100px;
}
</style>