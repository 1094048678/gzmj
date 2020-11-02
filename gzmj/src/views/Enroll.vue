<template>
  <div class="c1">
    <div class="container" v-if="this.$store.state.isLogined == 0">
      <div>
        <router-link to="/">
          <button class="back">&lt;</button>
        </router-link>
      </div>
      <h1>注册</h1>
      <div class="input">
        <div>
          <img src="../../public/img/zc.png" alt="" />
          <input
            type="text"
            class="i"
            placeholder="请输入用户名"
            v-model="username"
          />
        </div>

        <div>
          <img src="../../public/img/psd.png" alt="" />
          <input
            type="password"
            class="i"
            placeholder="请输入密码"
            v-model="password"
          />
        </div>

        <div>
          <img src="../../public/img/psd1.png" alt="" />
          <input
            type="password"
            class="i"
            placeholder="请再次输入密码"
            v-model="conpassword"
          />
        </div>
      </div>
      <div class="login_button">
        <button @click="handle">注册</button>
      </div>
      <p class="p">
        已有帐号?
        <router-link to="/login">立即登录</router-link>
      </p>
    </div>

    <div class="home" v-else>
      <div class="homeHead"></div>
      <div class="profileParent">
        <router-link to="/personal" class="profile">
          <img
            :src="uname.touxiang"
            alt=""
            class="profileImg"
          />
        </router-link>
        <span class="profileText">
          <p>{{uname.nicheng}}</p>
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
      <div class="bt1">
        <button @click="zx">注销</button>
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
  </div>
</template>
<style scoped>
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
.mineTuo img {
  margin-right: 10px;
}
.mine img {
  margin-right: 10px;
}
.mineTuo > p > a {
  text-decoration: none;
}
.mine {
  margin-top: -66px;
}
.mine > p > a {
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
.bt1 {
  text-align: center;
}
.bt1 button {
  display: inline-block;
  width: 80%;
  height: 50px;
  margin-top: 30px;
  border: none;
  background: #f54c4c;
  color: #fff;
  border-radius: 30px;
}
</style>
<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.c1 {
  height: 100%;
}
.container {
  height: 100%;
  background-image: url("../../public/img/zcbj.png");
  background-size: 100% 100%;
}
a {
  text-decoration: none;
  color: black;
}
.back {
  width: 36px;
  height: 36px;
  color: #fff;
  font-size: 22px;
  border: none;
  margin-left: 10px;
  margin-top: 10px;
  border-radius: 50%;
  background: rgba(0, 0, 0, 0.2);
}
h1 {
  text-align: center;
  font-size: 40px;
  font-weight: bold;
  color: rgb(88, 93, 139);
  margin-top: 30px;
}
.input {
  position: absolute;
  left: 50%;
  margin-left: -115px;
  top: 50%;
  margin-top: -170px;
}
.input .i {
  border-radius: 30px;
  margin: 10px 0;
  padding-left: 45px;
  background: rgba(0, 0, 0, 0.2);
  border: 1px solid rgba(0, 0, 0, 0.2);
  height: 42px;
}
input::placeholder {
  color: #fff;
  font-size: 14px;
}
.input > div {
  position: relative;
}
.input img {
  position: absolute;
  left: 14px;
  top: 19px;
}
.login_button {
  position: absolute;
  top: 50%;
  margin-top: 60px;
  left: 50%;
  margin-left: -130px;
}
.login_button button {
  border: none;
  width: 270px;
  height: 42px;
  border-radius: 30px;
  background-color: #0aa1ed;
  color: #fff;
}
.p {
  position: absolute;
  top: 60%;
  margin-top: 50px;
  left: 50%;
  margin-left: -10px;
  color: #68bde7;
}
</style>
<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      conpassword: "",
      tabbar: "me",
      uname: "",
    };
  },
  mounted() {
    
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
    
  },
  watch: {
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
  },
  methods: {
    zx() {
      localStorage.removeItem("isLogined");
      localStorage.removeItem("collection");
      document.cookie = "username=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
      this.$router.push("/");
      window.location.reload();
    },
    //校验用户名
    checkUsername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if (usernameRegExp.test(this.username)) {
        // this.usernameState = "success";
        return true;
      } else {
        // this.usernameState = "error";
        this.$toast({
          message: "用户名不合法",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //校验密码
    checkPassword() {
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (passwordRegExp.test(this.password)) {
        return true;
      } else {
        this.$toast({
          message: "密码必须为字母、数字的组合体",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //校验确认密码
    checkConpassword() {
      if (this.password != this.conpassword) {
        this.$toast({
          message: "两次密码不一致",
          position: "top",
          duration: "2000",
        });
        return false;
      } else {
        return true;
      }
    },
    handle() {
      if (
        this.checkUsername() &&
        this.checkPassword() &&
        this.checkConpassword()
      ) {
        // 该将获取到的信息提交到WEB服务器
        // console.log('该将获取到的信息提交到WEB服务器');
        this.axios
          .post("/register","username=" + this.username + "&password=" + this.password)
          .then((res) => {
            if (res.data.code == 1) {
              this.$router.push("/login");
            } else {
              this.$messagebox("注册信息", "用户名已被占用");
            }
          });
      }
    },
  },
};
</script>
