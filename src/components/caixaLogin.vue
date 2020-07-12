<template>
  <div id="caixaLogin">
    <input type="text" placeholder="Usuário" v-model="inputUsuario"/>
    <input type="password" placeholder="Senha" v-model="inputSenha" />
    <button @click="logar">Entrar</button>
    <img src="../assets/Logopizza.png" alt="Logo" />
  </div>
</template>

<script>
const axios = require ('axios')
export default {
  mounted() {
    if (this.$store.state.logins.length <= 0) {
        axios.get("https://localhost:44399/api/Usuarios").then(logins => {
        this.$store.state.logins = logins.data
      });
    }
    if (this.$store.state.produtos.length <= 0) {
        axios.get("https://localhost:44399/api/Produtos").then(produtos => {
        this.$store.state.produtos = produtos.data
      });
    }
    if (this.$store.state.entregas.length <= 0) {
        axios.get("https://localhost:44399/api/Entregas").then(entregas => {
        this.$store.state.entregas = entregas.data
      });
    }
    if (this.$store.state.funcionarios.length <= 0) {
        axios.get("https://localhost:44399/api/Funcionarios").then(funcionarios => {
        this.$store.state.funcionarios = funcionarios.data
      });
    }
    if (this.$store.state.clientes.length <= 0) {
        axios.get("https://localhost:44399/api/Clientes").then(clientes => {
        this.$store.state.clientes = clientes.data
      });
    }
  },
  methods: {
    logar: function() {
      console.log(this.$store.state.produtos)
      if(this.inputUsuario == ''){
        alert("Informe um usuário!")
      }
      else if(this.inputSenha == ''){
        alert("Informe uma senha!")
      }
      else{
        var usuarioLogado = false
        this.$store.state.logins.filter(u => {
          if(u.login.trim() == this.inputUsuario && u.senha.trim() == this.inputSenha){
            usuarioLogado = true
            this.$router.push("/mesas")
          }
        })
        if(usuarioLogado == false){
          alert("Usuário não encontrado! Tente novamente.")
        }
      }
    }
  }, data: function(){
    return{
      login: [],
      inputUsuario: '',
      inputSenha: ''
    }
  }
};
</script>

<style>
#caixaLogin {
  border: 4px groove blue;
  height: 400px;
  width: 270px;
  position: relative;
  top: 90px;
  margin: auto;
  background-color: rgb(135, 206, 250);
  border-radius: 7px;
}
#caixaLogin input {
  display: block;
  margin-top: 40px;
  position: relative;
  top: 100px;
  left: 50px;
  width: 220x;
  height: 25px;
  border-radius: 4px;
  padding-left: 4px;
}
#caixaLogin button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  position: relative;
  left: 95px;
  top: 120px;
  border-radius: 4px;
}
#caixaLogin button:active,
#caixaLogin button:focus {
  font-weight: bold;
  border: 3px solid blue;
}
#caixaLogin img {
  width: 200px;
  position: relative;
  left: 35px;
  top: -155px;
  border-radius: 3px;
}
</style>