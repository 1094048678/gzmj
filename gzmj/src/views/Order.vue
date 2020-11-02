<template>
  <div>
    <div>
      <mt-header title="订单" fixed> </mt-header>
    </div>
    <!-- 顶部选项卡开始 -->
    <div>
      <mt-navbar class="head_top" v-model="head_top">
        <mt-tab-item id="1">全部</mt-tab-item>
        <mt-tab-item id="2">待付款</mt-tab-item>
        <mt-tab-item id="3">待完结</mt-tab-item>
        <mt-tab-item id="4">待评价</mt-tab-item>
        <mt-tab-item id="5">退款/售后</mt-tab-item>
      </mt-navbar>
    </div>
    <div>
      <mt-tab-container v-model="head_top">
        <mt-tab-container-item id="1">
          <div class="a">
            <div class="info">
              <img src="../../public/img/1.png" class="img" />
              <div class="info_small">
                <span class="font_1"
                  >大玩家乐派农家乐<span class="font_7">待评价</span></span
                >
                <p class="time">下单时间：2019-12-25</p>
                <span class="font_3"
                  >尾款：
                  <span class="font_4">￥42.00 </span>
                  <span class="font_8">(已支付)</span>
                  <span class="font_5">2人</span>
                </span>
              </div>
            </div>
            <router-link to="/paied" class="btn_1">查看订单</router-link>
          </div>
        </mt-tab-container-item>
      </mt-tab-container>
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
<style>
.main {
  margin-bottom: 55px;
}
.btn_1 {
  float: right;
  width: 100px;
  height: 25px;
  line-height: 24px;
  text-decoration: none;
  text-align: center;
  margin-right: 10px;
  border-radius: 10px;
  /* border: 1px solid #999; */
  border: none;
  background-color: gold;
  color: #fff;
}
.a {
  margin-bottom: 30px;
}
.head {
  font-size: 8px;
  text-align: center;
}
.head_top {
  font-size: 14px;
  display: flex;
  justify-content: space-around;
  margin-top: 40px;
}
.info {
  display: flex;
  justify-content: left;
  /* height: 100px; */
  padding: 5px;
  margin: 5px;
}
.img {
  height: 100px;
  border-radius: 5px;
}
.time {
  font-size: 12px;
}
.info_small {
  display: inline-block;
  vertical-align: middle;
  margin-left: 10px;
}
.btn {
  float: right;
  margin-right: 10px;
  border-radius: 20px;
  border: 1px #999 solid;
  color: #999;
  background-color: #fff;
}
.text {
  display: inline-block;
  vertical-align: bottom;
}
.font_3 {
  /* display: inline-block; */
  margin-top: 20px;
  font-size: 14px;
}
.font_1 {
  display: inline-block;
  margin-bottom: 35px;
  font-weight: bolder;
}
.font_4 {
  color: red;
}
.font_5 {
  margin-left: 40px;
  font-size: 12px;
}
.font_7 {
  font-weight: normal;
  margin-left: 30px;
  font-size: 12px;
  color: gold;
}
.font_8 {
  display: inline-block;
  font-size: 14px;
  color: #999;
}
</style>
<script>
export default {
  data() {
    return {
      head_top: "1",
      tabbar: "order",
    };
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
};
</script>
