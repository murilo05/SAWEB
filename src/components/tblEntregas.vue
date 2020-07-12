<template>
  <div>
    <div id="tblEntregas">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Entregador</th>
            <th>Status</th>
            <th></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
           <tr v-for="entrega in this.$store.state.entregas" :key="entrega.id">
            <td>{{entrega.$id}}</td>
            <td>{{entrega.Nome}}</td>
            <td>{{entrega.Telefone}}</td>
            <td>{{entrega.entregador}}</td>
            <td>{{entrega.finalizada}}</td>
            <td>
              <button>Informações</button>
            </td>
            <td>
              <button>Finalizar</button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <button id="btnInfo" @click="abrirInfos()">Informações</button>
    <button id="btnFinalizar">Finalizar</button>
    <input id="check" type="checkbox" />
    <label id="lblFinalizados">Somente as não finalizadas</label>
  </div>
</template>

<script>
export default {
  data:function(){
    return{
      converter: []
    }
  },
  methods: {
    abrirInfos: function() {
      this.$router.push("entregasInfo");
    }
  },
  mounted(){
    this.converter = this.$store.state.agendamentos
    for (let index = 0; index <= this.converter.length; index++) {
      if(this.converter[index].finalizada == true){
        this.converter[index].finalizada = "Finalizada"
      }
      else{
        this.converter[index].finalizada = "Em andamento"
      }
    }
  }
};
</script>

<style>
#tblEntregas {
  position: relative;
  left: 400px;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  overflow-y: scroll;
  overflow-x: hidden;
  margin: 30px;
  border: 1px solid black;
  background: rgb(151, 182, 210);
  width: 900px;
  height: 400px;
}
#tblEntregas table {
  text-align: center;
  width: 850px;
}
#tblEntregas th {
  font-size: 150%;
}
#btnInfo {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  left: 700px;
}
#btnFinalizar {
  height: 35px;
  width: 120px;
  border-radius: 5px;
  background: rgb(135, 206, 250);
  border: 2px solid blue;
  border-radius: 5px;
  position: relative;
  left: 800px;
}
#check {
  position: relative;
  left: 850px;
}
#lblFinalizados {
  position: relative;
  left: 850px;
}
</style>