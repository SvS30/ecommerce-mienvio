<template>
  <li class="list-group-item d-flex justify-content-between lh-sm">
    <div>
      <h6 class="my-0">{{ this.name }}</h6>
      <small class="text-muted">{{ this.description.substring(0, 50) }}</small>
    </div>
    <span class="text-muted">$ {{ this.price }} </span>
  </li>
</template>

<script>
export default {
  props: ["name", "description", "price"],
};
</script>