<template>
  <div>
    <mt-header title="订单支付" class="" fixed>
      <router-link to="/obligation" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="desc">
      <p class="p1">预约金</p>
      <p class="p2">￥500.00</p>
      <p class="p3">大玩家乐派水上乐园</p>
    </div>
    <div class="paymethod">
      <p class="p4">选择支付方式</p>
      <div class="pay1">
        <img class="img1" src="../../public/image/zfb.png" alt="" />
        <span>支付宝支付</span>
        <input class="input" type="radio" value="zfb" v-model="gender" />
      </div>
      <div class="pay2">
        <img class="img2" src="../../public/image/wx2.png" alt="" />
        <span>微信支付</span>
        <input class="input" type="radio" value="wx" v-model="gender" />
      </div>
    </div>
    <div>
      <mt-button class="button" type="primary" @click="zf">确认支付</mt-button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      gender: "zfb",
    };
  },
  methods: {
    zf() {
      this.$messagebox
        .confirm("是否确认支付?")
        .then((action) => {
          this.$router.push("/paied");
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>
<style>
.button {
  width: 370px;
  border: 0;
  margin: 0 3px;
}
.input {
  float: right;
  margin-right: 10px;
  margin-top: 10px;
}
.pay1 {
  margin: 0 0 20px 10px;
}
.img1 {
  margin-right: 5px;
}
.pay2 {
  margin: 0 0 20px 10px;
}
.img2 {
  margin-right: 5px;
}
.desc {
  margin-top: 80px;
  text-align: center;
}
.p1 {
  font-size: 12px;
  color: gray;
}
.p2 {
  margin: 10px 0;
  color: red;
  font-size: 24px;
}
.p3 {
  font-size: 14px;
  margin-bottom: 15px;
}
.p4 {
  font-size: 14px;
  font-weight: bolder;
  margin: 0 0 20px 10px;
}
</style>
