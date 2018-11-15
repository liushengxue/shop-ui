<template>
  <div class="select-login">
    <div class="bottom">
      <img src="./images/lk_logo_sm.png" alt="" width="200">
    </div>
    <h4>选择登录方式</h4>
    <router-link tag="button" to="/login">手机登录</router-link>
  </div>
</template>

<script>
  export default {
    name: "Login",
    data() {
      return {
        loginMode: true, // 登录方式, true 验证码登录 false 账号登录
        phone: '', // 手机号码
        countDown: 0, // 倒计时
        pwdMode: true, // 密码的显示方式 true 密文 false 明文
        pwd: '', // 密码
        code: '', // 验证码
        userInfo: {}, // 用户的信息
        user_name: '', // 用户名
        captcha: '',  // 图形验证码
      }
    },
   
  }
</script>

<style scoped lang="stylus" ref="stylesheet/stylus">
  .select-login
    background-color #f5f5f5
    width 100%
    height 100%
    position fixed
    left 0
    top 0
    z-index 1000
    display flex
    flex-direction column
    justify-content center
    align-items center
    button
      width 80%
      height 38px
      background-color purple
      border none
      border-radius 5px
      font-size 20px
      color #fff
      margin-top 30px
    .bottom
      position fixed
      top 130px
      left 50%
      margin-left -100px
    h4
      margin-top:30px
</style>