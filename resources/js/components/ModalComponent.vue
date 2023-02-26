<template>
  <div class="custom-container-right">
    <div v-if="showModal">
      <transition name="modal">
        <div class="modal-mask">
          <div class="modal-wrapper">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Agregar un nuevo producto</h5>
                  <button
                    type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    <span aria-hidden="true" @click="showModal = false"
                      >&times;</span
                    >
                  </button>
                </div>
                <div class="modal-body">
                  <input type="text" name="nombre" placeholder="Nombre..." v-model="producto.nombre" />
                  <input type="text" name="descripcion" placeholder="Descripcion..." v-model="producto.descripcion" />
                  <input type="number" min="0" name="precio" placeholder="Precio..." v-model="producto.precio" />
                </div>
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-danger"
                    @click="showModal = false"
                  >
                    Cancelar
                  </button>
                  <button type="button" class="btn btn-primary" @click="saveForm">
                    Guardar
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </transition>
    </div>
    <button class="btn btn-primary" @click="showModal = true">Crear producto</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
        showModal: false,
        producto: {
            nombre: '',
            descripcion: '',
            precio: null
        }
    }
  },
  methods: {
    async saveForm() {
        console.log(`Sending form: ${this.producto.nombre}:${this.producto.precio}`)
        await axios.post('/api/products', this.producto)
        .then((response) => alert(response.data.message))
        .catch((err) => {
            alert('Error');
            console.log(err)
        });
        this.showModal = false;
        this.producto = {
            nombre: '',
            descripcion: '',
            precio: null
        }
    }
  }
};
</script>

<style>
.custom-container-right {
    margin-left: 60%;
}
.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, .5);
  display: table;
  transition: opacity .3s ease;
}

.modal-wrapper {
  display: table-cell;
  vertical-align: middle;
}

.modal-dialog {
    width: 80%;
    background-color: #fff;
    border-radius: 10px;
}

.modal-content {
    padding: 15px;
}

.modal-footer {
    gap: 10px;
}
</style>