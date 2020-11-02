<template>
  <div>
    <mt-header :title="info.title">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <div slot="right">
        <div @click="shoucang">
          <img :src="like ? sc : wsc" alt="" />
        </div>
      </div>
    </mt-header>
    <div class="content">
      <div class="swipe">
        <img :src="info.lj" alt="" />
      </div>
      <div class="xq">
        <h5>{{ info.title }}</h5>
        <p class="details">
          {{ info.detail }}
        </p>
        <div class="price">
          <p>
            包吃住每人<span
              >￥<span class="price1">{{ info.price }}</span
              >/天</span
            >
          </p>
          <p>节假日略有上浮</p>
        </div>
      </div>
      <div class="cell">
        <mt-cell :title="info.address" is-link :to="`/amap/${info.id}`">
          <img
            slot="icon"
            src="../../public/image/weizhi.png"
            width="24"
            height="24"
          />
        </mt-cell>
        <mt-cell title="商家信息" is-link to="/">
          <img
            slot="icon"
            src="../../public/image/shangjia.png"
            width="24"
            height="24"
          />
        </mt-cell>
      </div>
      <div>
        <mt-navbar v-model="selected" class="navbar_h">
          <mt-tab-item id="1">商家介绍</mt-tab-item>
          <mt-tab-item id="2">用户评价</mt-tab-item>
        </mt-navbar>
        <mt-tab-container v-model="selected">
          <mt-tab-container-item id="1" class="navbar_c">
            <img :src="info.lj2" alt="" />
            <p>
              {{ info.detail2 }}
            </p>
          </mt-tab-container-item>
          <mt-tab-container-item id="2" class="navbar_c">
            <p class="pl">暂无评论</p>
          </mt-tab-container-item>
        </mt-tab-container>
      </div>
    </div>
    <div class="bt">
      <router-link to="/" class="zx">
        <img src="../../public/image/wx.png" alt="" />
        <span>在线咨询</span>
      </router-link>
      <router-link to="" class="phone">
        <img src="../../public/image/phone.png" alt="" />
        <span>联系电话</span>
      </router-link>
      <router-link to="/reservations" class="yd">
        <span>立即预定</span>
      </router-link>
    </div>
  </div>
</template>
<style scoped>
.swipe img {
  height: 200px;
}
.swipe img {
  width: 100%;
}
.content {
  margin-bottom: 50px;
}
.xq {
  padding: 20px 15px;
  margin-bottom: 30px;
}
.xq h5 {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}
.xq .details {
  margin-bottom: 15px;
  font-size: 16px;
  line-height: 22px;
}
.xq .price {
  display: flex;
  justify-content: space-between;
}
.xq .price p {
  font-size: 16px;
  color: #aaa;
  line-height: 24px;
}
.xq .price p > span {
  color: #ea875a;
}
.xq .price p .price1 {
  font-size: 24px;
  font-weight: bold;
}
.cell {
  margin-bottom: 15px;
}
.navbar_h {
  margin-bottom: 30px;
}
.navbar_c img {
  width: 100%;
}
.navbar_c p {
  margin: 25px;
}
.navbar_c .pl {
  text-align: center;
}
a {
  text-decoration: none;
}
.bt {
  height: 50px;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
}
.bt a {
  display: inline-block;
  height: 100%;
  text-align: center;
  color: #fff;
  line-height: 50px;
  font-size: 14px;
}
.bt a img {
  margin-right: 5px;
}
.bt .zx {
  width: 30%;
  background: #77c65d;
}
.bt .phone {
  width: 30%;
  background: #29b3fe;
}
.bt .yd {
  width: 40%;
  background: #ffc000;
  font-size: 18px;
}
</style>
<script>
export default {
  data() {
    return {
      wsc: require("../../public/image/shoucang.png"),
      sc: require("../../public/image/shoucang1.png"),
      like: "",
      selected: "1",
      info: {},
      res: {},
    };
  },
  methods: {
    shoucang() {
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
      let id = this.$route.params.id;
      let res = this.res;
      // console.log(res)
      if (this.$store.state.isLogined == 0) {
        this.$messagebox
          .confirm("请先登录账号")
          .then((action) => {
            this.$router.push("/login");
          })
          .catch((err) => {
            console.log(err);
          });
      } else if (res == "") {
        this.axios.get("/addsc?uname=" + uname + "&id=" + id).then((res) => {
          console.log(res.data.results);
        });
        this.like = true;
        this.$store.commit("coll");
        localStorage.setItem("collection", 1);
        window.location.reload();
      } else if (res != "") {
        this.axios.get("/remsc?uname=" + uname + "&id=" + id).then((res) => {
          console.log(res.data.results);
        });
        this.like = false;
        // this.$store.commit("coll");
        localStorage.removeItem("collection");
        window.location.reload();
        // console.log(this.$store.state.collection)
      }
    },
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
    let id = this.$route.params.id;
    // console.log(id);
    this.axios.get("/details?id=" + id).then((res) => {
      // console.log(res.data.result);
      let data = res.data.result;
      data.lj = require("../../public/img/" + data.lj);
      data.lj2 = require("../../public/img/" + data.lj2);
      this.info = data;
    });

    //发送请求，获得收藏表数据
    this.axios.get("/shoucang?id=" + id + "&uname=" + uname).then((res) => {
      let data = res.data.results;
      // console.log(data);
      if (data == "") {
        this.like = 0;
      } else {
        this.like = 1;
      }
      this.res = data;
    });
    if (uname == "") {
      this.like = 0;
    }
  },
};
</script>
