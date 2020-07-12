import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    logins: [],
    produtos:  [],
    entregas:  [],
    funcionarios: [],
    clientes:[]
  },
  mutations: {
    cadastrarUsuario(state,login){
    state.usuarios.push(login)
    },
    cadastrarFuncionario(state,funcionario){
      state.funcionarios.push(funcionario)
    },
    cadastrarCliente(state,cliente){
      state.cliente.push(cliente)
    },
    cadastrarProduto(state,produto){
      state.produto.push(produto)
    }
  },
  actions: {
  },
  modules: {
  }
})
