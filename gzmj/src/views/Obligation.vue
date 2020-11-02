<template>
  <div>
    <div class="hint">
      订单待付款
    </div>
    <div class="page">
      订单信息
    </div>
    <div class="link">
      <mt-cell title="大玩家乐水上乐园" to="//github.com" is-link value="">
      </mt-cell>
    </div>
    <div>
      <mt-cell title="联系人"><span>马哒哈</span></mt-cell>
      <mt-cell title="联系电话"><span>17805481231</span></mt-cell>
      <mt-cell title="到店日期"
        ><span>2019-12-21 &nbsp;&nbsp;10:20</span></mt-cell
      >
      <mt-cell title="离店日期"
        ><span>2019-12-21 &nbsp;&nbsp;13:20</span></mt-cell
      >
      <mt-cell title="游玩时间"><span></span>2天1晚</mt-cell>
      <mt-cell title="大巴价格"
        ><span>￥120+25/人=</span> <span id="money">￥145</span>
      </mt-cell>
      <mt-cell title="成人价格"
        ><span></span>￥68×1人×2天=<span id="money">￥125</span></mt-cell
      >
      <mt-cell title="儿童价格"
        ><span></span>￥68×1人×2天=<span id="money">￥125</span></mt-cell
      >
      <mt-cell title="核对信息"><span>核对信息核对信息核对信息</span></mt-cell>
      <mt-cell><span>合计：</span><span id="money">￥395 </span> </mt-cell>
    </div>

    <div>
      <mt-tabbar class="button">
        <router-link to="/reservations">
          <mt-button size="small" plain>取消订单</mt-button></router-link
        >
      <router-link to="/payment_one">
        <mt-button size="small" id="button2">支付定金</mt-button>
        </router-link>
      </mt-tabbar>
    </div>
  </div>
</template>

<script>
export default {
  
};
</script>

<style scoped>
#money {
  color: red;
}
.page {
  font-weight: 600;
  font-size: 16px;
  margin: 15px;
}
.hint {
  height: 50px;
  background: #0aa1ed;
  color: #fff;
  line-height: 50px;
  padding-left: 15px;
  font-size: 18px;
  font-weight: 600;
}
.link {
  margin-left: 5px;
  font-weight: 600;
  font-size: 20px;
  margin-top: -5px;
}
.button {
  display: flex;
  flex-wrap: nowrap;
  justify-content: flex-end;
}
.button button {
  height: 35px;
  margin-bottom: 3px;
  border-radius: 15px;
}
.button button:first-child {
  margin-right: 30px;
  border: 1px solid #00a1ed;
}
.button #button2 {
  background: #00a1ed;
  color: #fff;
  margin-right: 10px;
}
</style>
