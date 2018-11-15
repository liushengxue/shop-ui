<template>
  <div class="recommend-container">
    <ul class="recommend" v-if="recommendshoplist.length > 0">
      <shop-list
        tag="li"
        v-for="(item, index) in recommendshoplist"
        :item=item
        :key="index"/>
    </ul>
    
  </div>
</template>

<script>
  import {mapState} from 'vuex';
  import ShopList from './../../components/ShopList/ShopList'

  export default {
    name: "Recommend",
    mounted() {
      this.$store.dispatch('reqRecommendShopList');
    },
    computed: {
      ...mapState(['recommendshoplist'])
    },
   components:{
     ShopList
   }
  }
</script>

<style scoped lang="stylus" ref="stylesheet/stylus">
  .recommend-container
    background #F5F5F5
    width 100%
    overflow hidden
    .recommend
      display flex
      flex-direction row
      flex-wrap wrap
      background #F5F5F5
      padding-bottom 50px
</style>
