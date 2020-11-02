<template>
  <div class="card">
    <mt-header title="我的优惠券">
      <router-link to="/me" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="my_card">
      <div class="my_card_span">
        <span>全部</span>
        <span>未使用</span>
        <span>已使用</span>
      </div>
    </div>
    <div>
      <div class="my_div">
        <div>
          <p>50</p>
          <span id="my_div_span">全场通用</span>
        </div>
        <div>
          <p>满888可用</p>
          <p>有效期至：2020-09-09</p>
          <p>详细信息^</p>
        </div>
        <div><button>立即使用</button></div>
      </div>
      <div class="my_div">
        <div>
          <p>50</p>
          <span id="my_div_span">全场通用</span>
        </div>
        <div>
          <p>满888可用</p>
          <p>有效期至：2020-09-09</p>
          <p>详细信息^</p>
        </div>
        <div><button>立即使用</button></div>
      </div>
      <div class="my_div">
        <div>
          <p>50</p>
          <span id="my_div_span">全场通用</span>
        </div>
        <div>
          <p>满888可用</p>
          <p>有效期至：2020-09-09</p>
          <p>详细信息^</p>
        </div>
        <div><button>立即使用</button></div>
      </div>
      <div class="my_div">
        <div id="text">
          <p>50</p>
          <span id="my_div_span">全场通用</span>
        </div>
        <div>
          <p>满888可用</p>
          <p>有效期至：2020-09-09</p>
          <p>详细信息^</p>
        </div>
        <div><button id="text">已使用</button></div>
      </div>
      <div class="my_div">
        <div id="text">
          <p>50</p>
          <span id="my_div_span">全场通用</span>
        </div>
        <div>
          <p>满888可用</p>
          <p>有效期至：2020-09-09</p>
          <p>详细信息^</p>
        </div>
        <div><button id="text">已使用</button></div>
      </div>
    </div>
  </div>
</template>
<style scoped>
#text {
  background: #666;
}
#my_div_span {
  margin-top: -28px;
  color: #fff;
  font-size: 15px;
  display: block;
}
.my_div_yet {
  background: #fff;
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.my_div {
  background: #fff;
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.my_div div:nth-child(3) {
  margin-right: 10px;
  margin-top: 15px;
}
.my_div div:nth-child(2) > p {
  margin-left: -25px;
  margin-top: 7px;
}
.my_div div:nth-child(2) > p:nth-child(1) {
  font-weight: 600;
}
.my_div div:nth-child(2) > p:nth-child(2) {
  font-weight: 400;
  color: dimgray;
}
.my_div div:nth-child(2) > p:nth-child(3) {
  font-weight: 400;
  color: darkgray;
}

.my_div div:nth-child(3) > button {
  border: none;
  border-radius: 18px;
  color: #fff;
  background: #ffcc32;
  padding: 10px;
}
.my_div > div {
  margin-bottom: 10px;
}
.my_div div:first-child {
  margin-left: 5px;
  font-weight: 600;
  line-height: 60px;
  text-align: center;
  font-size: 40px;
  height: 80px;
  width: 80px;
  background: #ffcc32;
  color: #fff;
}
.card {
  background: #f5f5f5;
}
.my_card {
  margin-top: 10px;
  text-align: center;
  font-size: 20px;
  font-weight: 700;
  background: #fff;
  padding-bottom: 5px;
}
.my_card_span {
  margin-left: 8px;
  margin-right: 8px;
  color: #ccc;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 3px;
}

.my_card span {
  display: inline-block;
  font-size: 20px;
  padding-bottom: 5px;
}
.my_card span:first-child {
  border-bottom: 4px solid #ffcc32;
}
</style>
<script>
export default {};
</script>
