<template>
  <div>
    <div class="overall">
      <mt-header title="浙江绍兴农家乐">
        <router-link to="/details" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <div>
      <mt-cell title="浙江农家乐" to="//github.com" is-link value="预定须知">
      </mt-cell>
    </div>
    <div class="bill">
      <div class="bill_text">
        <span>成人票</span>
        <p>1.5米以上</p>
      </div>
      <div class="bill_price">
        <span>￥{{ num1.toFixed(2) }}</span>
        <p>￥{{ num }}/人</p>
      </div>
      <div class="bill_button">
        <button @click="bill_price">-</button>
        {{ n }}
        <button @click="plus">+</button>
      </div>
    </div>
    <div class="bill">
      <div class="bill_text">
        <span>儿童票</span>
        <p>1.5米以上</p>
      </div>
      <div class="bill_price">
        <span>￥ {{ num2.toFixed(2) }}</span>
        <p>￥{{ num }}/人</p>
      </div>
      <div class="bill_button">
        <button @click="bill_price2">-</button>
        {{ n2 }}
        <button @click="plus2">+</button>
      </div>
    </div>
    <div class="message_texts">
      <div class="message_text">预定信息</div>
      <div class="detailed">
        <div>到店日期</div>
        <div>2020—11—30</div>
        <div></div>
      </div>
      <div class="detailed">
        <div>离店日期</div>
        <div>2020—12—30</div>
        <div></div>
      </div>
      <div class="detailed">
        <div>交通出行</div>
        <div>自驾游</div>
        <div></div>
      </div>
    </div>
    <div class="message_texts">
      <div class="message_text">个人信息</div>
      <div class="detailed2">
        <span>姓名</span><input type="text" placeholder="请输入您的姓名" />
      </div>
      <div class="detailed3">
        <span>手机号</span><input type="text" placeholder="请输入您的手机号" />
      </div>
    </div>
    <div class="bt">
      <router-link to="/obligation" class="tabbar_button">
        <mt-button size="large" class="submit">确认提交</mt-button>
      </router-link>
    </div>
  </div>
</template>
<style scoped>
.submit{
    color: white;
}
.bt{
    position: absolute;
    bottom: 0;
    left: 0;right: 0;
}
a {
  text-decoration: none;
  color: white;
}
.overall {
  background: #3c3c3c;
}
.bill {
  margin-right: 10px;
  margin-left: 10px;
  height: 50px;
  margin-top: 30px;
  display: flex;
  flex-wrap: nowrap;
  justify-content: space-between;
  text-align: center;
}
.bill > .bill_text > span {
  font-size: 16px;
  font-weight: 600;
  color: #3c3c3c;
  display: inline-block;
  margin-bottom: 10px;
}
.bill > .bill_text > p {
  color: darkgray;
  font-size: 14px;
}
.bill_button > button {
  padding: 5px 10px 5px 10px;
  border: 0px;
  outline: none;
}
.bill_price > span {
  margin: 5px 5px 5px 5px;
  color: red;
  font-size: 16px;
  font-weight: 600;
}
.detailed {
  display: flex;
  flex-wrap: nowrap;
  justify-content: space-between;
  text-align: center;
}
.message_text {
  font-weight: 700;
  font-size: 20px;
}
.message_texts {
  margin-left: 10px;
}
.message_texts > div {
  margin-top: 20px;
}
.detailed > div {
  font-size: 16px;
  font-weight: 600;
  color: #3c3c3c;
}
.detailed2 > span {
  display: inline-block;
  margin-right: 40px;
  font-size: 16px;
  font-weight: 600;
  color: #3c3c3c;
}
.detailed2 > input {
  border: 0px;
  height: 30px;
  color: darkgray;
}
.detailed3 > span {
  display: inline-block;
  margin-right: 20px;
  font-size: 16px;
  font-weight: 600;
  color: #3c3c3c;
}
.detailed3 > input {
  border: 0px;
}
.tabbar_button button {
  height: 50px;
  background: #26a2ff;
}
.tabbar_button button span {
  color: #fff;
}
.tabbar_button {
  background: #fff;
  padding: 0px;
}
.bill_price > p {
  display: block;
  margin-top: 9px;
  color: darkgray;
  font-size: 14px;
}
</style>

<script>
export default {
  data() {
    return {
      n: 1,
      num: 99.9,
      n2: 1,
      num1: 99.9,
      num2: 99.9,
    };
  },
  methods: {
    bill_price() {
      this.n--;
      this.num1 = parseInt(this.n * this.num);
    },
    plus() {
      this.n++;
      this.num1 = parseInt(this.n * this.num);
    },
    bill_price2() {
      this.n2--;
      this.num2 = parseInt(this.n2 * this.num);
    },
    plus2() {
      this.n2++;
      this.num2 = parseInt(this.n2 * this.num);
    },
  },
};
</script>
