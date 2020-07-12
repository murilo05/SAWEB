import Vue from 'vue'
import VueRouter from 'vue-router'
import clientes from '../views/clientes.vue'
import entregas from '../views/entregas.vue'
import entregasInfo from '../views/entregasInfo.vue'
import estoque from '../views/estoque.vue'
import funcionarios from '../views/funcionarios.vue'
import ingredientes from '../views/ingredientes.vue'
import login from '../views/login.vue'
import mesaInfo from '../views/mesaInfo.vue'
import mesas from '../views/mesas.vue'
import produtos from '../views/produtos.vue'
import produtosIngredientes from '../views/produtosIngredientes.vue'
import usuarios from '../views/usuarios.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/clientes',
    name: 'clientes',
    component: clientes
  },
  {
    path: '/entregas',
    name: 'entregas',
    component: entregas
  },
  {
    path: '/entregasInfo',
    name: 'entregasInfo',
    component: entregasInfo
  },
  {
    path: '/estoque',
    name: 'estoque',
    component: estoque
  },
  {
    path: '/funcionarios',
    name: 'funcionarios',
    component: funcionarios
  },
  {
    path: '/ingredientes',
    name: 'ingredientes',
    component: ingredientes
  },
  {
    path: '',
    name: 'login',
    component: login
  },
  {
    path: '/mesaInfo',
    name: 'mesaInfo',
    component: mesaInfo
  },
  {
    path: '/mesas',
    name: 'mesas',
    component: mesas
  },
  {
    path: '/produtos',
    name: 'produtos',
    component: produtos
  },
  {
    path: '/produtosIngredientes',
    name: 'produtosIngredientes',
    component: produtosIngredientes
  },
  {
    path: '/usuarios',
    name: 'usuarios',
    component: usuarios
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
