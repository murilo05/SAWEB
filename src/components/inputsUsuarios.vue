<template>
  <div id="inputsUsuarios">
    <input type="text" placeholder="Usuário" v-model="inputUsuario" />
    <input type="password" placeholder="Senha" v-model="inputSenha" />
    <input type="password" placeholder="Confirmar Senha" v-model="inputConfirmarSenha" />
    <button @click="Salvar">Salvar</button>
    <button @click="Excluir">Excluir</button>
    <div id="ademir">
      <input type="checkbox" v-model="inputCheckBox" />
      <label>Ademir</label>
    </div>
  </div>
</template>

<script>
const axios = require("axios");

export default {
  data: function() {
    return {
      inputUsuario: "",
      inputSenha: "",
      inputCheckBox: "",
      inputConfirmarSenha: ""
    };
  },
  methods: {
    Salvar: function() {
      if (this.inputSenha == this.inputConfirmarSenha) {
        if (this.inputCheckBox == true) {
          try{
            axios
            .post("https://localhost:44399/api/Usuarios", {
              login: this.inputUsuario,
              senha: this.inputSenha,
              admin: true
            })
            .then(resp => {
              this.$store.commit("cadastrarUsuario", resp.data);
            });
          alert("Usuário Salvo com Sucesso!");
          }
          catch{
            alert("Erro")
          }
        } else {
          axios
            .post("https://localhost:44399/api/Usuarios", {
              login: this.inputUsuario,
              senha: this.inputSenha,
              admin: false
            })
            .then(resp => {
              this.$store.commit("cadastrarUsuario", resp.data);
            });
          alert("Usuário Salvo com Sucesso!");
        }
      } else {
        alert("Confirmação de Senha Incorreta!");
      }
    },
    excluir: function(login){
            if (confirm("Tem certeza que deseja excluir?")) {
                axios.delete(`https://localhost:8083/api/${login}`).then((res) => {
                    this.$store.commit("excluir", res.data)
                    alert("Cliente excluído com sucesso!")
                })
            }
        },
  }
};
</script>

<style>
#inputsUsuarios {
  width: 100px;
  position: relative;
}
#inputsUsuarios input {
  height: 25px;
  border-radius: 5px;
  border: none;
  position: relative;
  top: 80px;
  left: 200px;
  margin-top: 30px;
  text-align: center;
}
#inputsUsuarios button {
  height: 35px;
  width: 80px;
  border-radius: 5px;
  background: rgb(151, 182, 210);
  border: 2px solid blue;
  position: relative;
  left: 245px;
  top: 90px;
  border-radius: 4px;
  margin-top: 20px;
}
#ademir label {
  position: relative;
  left: 400px;
  top: -90px;
}
#ademir input {
  position: relative;
  left: 400px;
  top: -83px;
}
</style>