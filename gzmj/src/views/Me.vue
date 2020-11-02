<template>
  <div class="home">
    <div class="homeHead">
      
    </div>
    <div class="profileParent">
      <router-link to='/personal' class="profile">
        <img src="../../public/img/profile_img.jpg" alt="" class="profileImg" />
      </router-link>
      <span class="profileText">
        <p>大庆</p>
        <p>13344564657</p>
      </span>
    </div>
    <div class="mine">
      <mt-cell title="优惠券" is-link to="/card">
          <img
            slot="icon"
            src="../../public/img/yh.png"
            width="24"
            height="24"
          />
      </mt-cell>
      <mt-cell title="收藏" is-link to="/">
          <img
            slot="icon"
            src="../../public/img/sc.png"
            width="24"
            height="24"
          />
      </mt-cell>
      <mt-cell title="客服" is-link to="/">
          <img
            slot="icon"
            src="../../public/img/kf.png"
            width="24"
            height="24"
          />
      </mt-cell>
    </div>
    <div class="mineTuo">
      <mt-cell title="设置" is-link to="/">
          <img
            slot="icon"
            src="../../public/img/sz.png"
            width="24"
            height="24"
          />
      </mt-cell>
      <mt-cell title="关于" is-link to="/">
          <img
            slot="icon"
            src="../../public/img/gy.png"
            width="24"
            height="24"
          />
      </mt-cell>
    </div>
    <div>
      <mt-tabbar v-model="tabbar" fixed>
        <mt-tab-item id="index"
          >首页
          <img
            src="../../public/image/home1.png"
            alt=""
            slot="icon"
            v-if="tabbar == 'index'"
          />
          <img src="../../public/image/home.png" alt="" slot="icon" v-else />
        </mt-tab-item>
        <mt-tab-item id="order"
          >订单
          <img
            src="../../public/image/order1.png"
            alt=""
            slot="icon"
            v-if="tabbar == 'order'"
          />
          <img src="../../public/image/order.png" alt="" slot="icon" v-else />
        </mt-tab-item>
        <mt-tab-item id="me"
          >我的
          <img
            src="../../public/image/me1.png"
            alt=""
            slot="icon"
            v-if="tabbar == 'me'"
          />
          <img src="../../public/image/me.png" alt="" slot="icon" v-else />
        </mt-tab-item>
      </mt-tabbar>
    </div>  
  </div>
</template>

<style  scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.mineTuo {
  margin-top: 20px;
}
.mineTuo > p {
  height: 50px;
  font-size: 20px;
  display: block;
  background: #fff;
  margin-bottom: 2px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.mineTuo img{
  margin-right: 10px;
}
.mine img{
  margin-right: 10px;
}
.mineTuo>p>a{
  text-decoration: none ;
}
.mine {
  margin-top: -66px;
}
.mine>p>a{
text-decoration: none;
}
.mine > p {
  height: 50px;
  font-size: 20px;
  display: block;
  background: #fff;
  margin-bottom: 2px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.profileText {
  font-size: 20px;
  position: relative;
  top: -33px;
}
.profileText p {
  margin-bottom: 8px;
  color: #3c3c3c;
}
.profileParent {
  height: 140px;
  position: relative;
  top: -85px;
  text-align: center;
  z-index: 5;
  background: #fff;
}
#homeHead_bad {
  display: inline-block;
  width: 8px;
  height: 8px;
  background: #ffcc32;
  border: 1px solid #fff;
  border-radius: 50px;
  margin-right: 2px;
}
#homeHead_signal {
  display: inline-block;
  width: 8px;
  height: 8px;
  background: #ffffff;
  border-radius: 50px;
  margin-right: 2px;
}
.profileImg {
  height: 100%;
  width: 100%;
}
.profile {
  display: inline-block;
  height: 80px;
  width: 80px;
  margin: 0 auto;
  position: relative;
  top: -45px;
  border: 1px;
  border-radius: 50px;
  overflow: hidden;
}
.home {
  width: 100%;
  height: 600px;
  background: #f5f5f5;
}
.homeHead {
  background: #ffcc32;
  height: 180px;
  border: 1px solid #ffcc32;
}
.homeHead button {
  background: #ffcc32;
}
</style>




<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  data() {
    return {
      tabbar: "me",
    };
  },
  watch:{
    tabbar(value) {
      if (value == "index") {
        this.$router.push("/").catch((e) => {});
      }
      if (value == "order") {
        this.$router.push("/order").catch((e) => {});
      }
      if (value == "me") {
        this.$router.push("/enroll").catch((e) => {});
      }
      // else if (value == "me"&&this.$store.state.isLogined==1) {
      //   this.$router.push("/me").catch((e) => {});
      // }
    },
  }
};
</script>
