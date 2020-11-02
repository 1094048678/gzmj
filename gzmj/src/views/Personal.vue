<template>
  <div>
    <div class="personal">
      <mt-header title="个人资料">
        <router-link to="/enroll" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <div>
      <mt-cell title="头像" is-link slot="icon" class="cell" >
        <img
          icon="right"
          :src="uname.touxiang"
          width="50"
          height="50"
        />
      </mt-cell>
      <mt-cell title="昵称" :value="uname.nicheng"> </mt-cell>
      <mt-cell title="手机号" is-link value="13326219309">
      </mt-cell>
      <mt-cell title="性别"  is-link value="男"> </mt-cell>
    </div>
    
  </div>
</template>
<script>
export default {
  data(){
    return{
      uname: "",
    }
  },
  mounted(){
    function getCookie(cname) {
      var name = cname + "=";
      var ca = document.cookie.split(";");
      for (var i = 0; i < ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return "";
    }
    let uname = getCookie("username");
    // console.log(uname);
    if(this.$store.state.isLogined != 0){
    this.axios.get('/user?uname='+uname).then(res=>{
      let data = res.data.results;
      data.touxiang = require("../../public/avatar/" + data.touxiang);
      // console.log(data)
      this.uname=data
    })
}
  }
}
</script>
<style scoped>

.cell {
  height: 60px;
  line-height: 60px;
  padding-top: 5px;
}
.cell img{
      border-radius: 50%;
}
</style>
