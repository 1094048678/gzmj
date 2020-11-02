<template>
  <div class="c1">
    <div class="container">
      <div>
        <router-link to="/">
          <button class="back">&lt;</button>
        </router-link>
      </div>
      <h1>登录</h1>
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
      </div>
      <div class="login_button">
        <button @click="login">登录</button>
      </div>
      <p class="p">
        <router-link to="/enroll">立即注册</router-link>
      </p>
    </div>
  </div>
</template>
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
  margin-top: -135px;
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
  /* left: 50%; */
  margin-left: 70px;
  color: #68bde7;
}
</style>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      unamestate: "",
      pwdstate: "",
      // uname: ""
    };
  },
  methods: {
    uname() {
      let usernamereg = /^[0-9a-zA-Z]{6,16}$/;
      if (usernamereg.test(this.username.trim())) {
        this.unamestate = "success";
        return true;
      } else {
        this.$toast({
          message: "用户名不合法",
          position: "middle",
          duration: 3000,
        });
        this.unamestate = "error";
        return false;
      }
    },
    pwd() {
      let passwordreg = /^[0-9a-zA-Z]{6,16}$/;
      if (passwordreg.test(this.password.trim())) {
        this.pwdstate = "success";
        return true;
      } else {
        this.$toast({
          message: "密码不合法",
          position: "middle",
          duration: 3000,
        });
        this.pwdstate = "error";
        return false;
      }
    },

    login() {
      if (this.uname() && this.pwd()) {
        let obj = {
          username: this.username,
          password: this.password,
        };
        this.axios.post("/login", this.qs.stringify(obj)).then((res) => {
          if (res.data.code == 1) {
            this.$store.commit("logined");
            localStorage.setItem("isLogined", "1");
            this.$router.push("/enroll");

            function setCookie(cname, cvalue, exdays) {
              var d = new Date();
              d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
              var expires = "expires=" + d.toGMTString();
              document.cookie = cname + "=" + cvalue + "; " + expires;
            }

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
           
            var user = getCookie("username");
            user = this.username;
            setCookie("username", user, 30);
            // console.log(user);
            
          } else {
            this.$messagebox("登录信息", "用户名或密码不正确");
          }
        });
      }
    },
  },
};
</script>
