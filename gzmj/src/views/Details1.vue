
<template>
  <div class="beijing">
    <!-- 头部标题开始 -->
    <mt-header title="农家乐" fixed>
      <mt-button slot="left" icon="back" type="primary">
        <router-link to="/"></router-link>
      </mt-button>
      <mt-button slot="right" icon="more" type="primary">
        <router-link to="/"></router-link>
      </mt-button>
    </mt-header>
    <!-- 头部标题结束 -->
    <!-- 面板开始 -->
    <mt-tab-container>
      <mt-tab-container-item>
        <router-link to="/">
          <div class="inline">
            <img src="../../public/img/1.png" alt="" />
            <div class="first">
              <h3 id="more">火车站周边农家乐</h3>
              <p id="more1">方便卫生快捷</p>
              <div><span>钓鱼</span><span>避暑</span></div>
              <p>
                <span class="a">¥220/天</span> <del class="b">¥936.00</del>
                <span class="c">125人已购买</span>
              </p>
            </div>
          </div>
        </router-link>

        <router-link to="">
          <div class="inline">
            <img src="../../public/img/2.png" alt="" />
            <div class="first">
              <h3>吉安农家乐</h3>
              <p>风景伊人聚餐首选</p>
              <div><span>聚餐</span><span>旅游</span></div>
              <p>
                <span class="a">¥420/天</span> <del class="b">¥9386.00</del>
                <span class="c">1285人已购买</span>
              </p>
            </div>
          </div>
        </router-link>
        <router-link to="">
          <div class="inline">
            <img src="../../public/img/3.png" alt="" />
            <div class="first">
              <h3>最受欢迎的地标</h3>
              <p>人气榜单</p>
              <div><span>小吃</span><span>名宿</span></div>
              <p>
                <span class="a">¥2250/天</span> <del class="b">¥95836.00</del>
                <span class="c">15人已购买</span>
              </p>
            </div>
          </div>
        </router-link>

        <router-link to="">
          <div class="inline">
            <img src="../../public/img/4.png" alt="" />
            <div class="first">
              <h3>杭州必打卡</h3>
              <p>超详细推荐</p>
              <div><span>古风</span><span>避暑</span></div>
              <p>
                <span class="a">¥300/天</span> <del class="b">¥1206.00</del>
                <span class="c">565人已购买</span>
              </p>
            </div>
          </div>
        </router-link>
        <router-link to="">
          <div class="inline">
            <img src="../../public/img/5.png" alt="" />
            <div class="first">
              <h3>威尼斯气息</h3>
              <p>古典优雅殿堂</p>
              <div><span>优雅</span><span>殿堂</span></div>
              <p>
                <span class="a">¥2120/天</span> <del class="b">¥116.00</del>
                <span class="c">158人已购买</span>
              </p>
            </div>
          </div>
        </router-link>

        <router-link to="">
          <div class="inline">
            <img src="../../public/img/6.png" alt="" />
            <div class="first">
              <h3>上海威尼斯</h3>
              <p>旅途首选</p>
              <div><span>游玩</span><span>必选</span></div>
              <p>
                <span class="a">¥120/天</span> <del class="b">¥636.00</del>
                <span class="c">753人已购买</span>
              </p>
            </div>
          </div>
        </router-link>
      </mt-tab-container-item>
    </mt-tab-container>
    <!-- 面板结束 -->
    <!-- 底部开始 -->
    <div>
      <mt-tabbar v-model="aaa" fixed>
        <mt-tab-item id="1"
          >首页
          <img
            src="../../public/img/index.png"
            alt=""
            slot="icon"
            v-if="aaa == '1'"
          />
          <img src="../../public/img/index1.png" alt="" slot="icon" v-else />
        </mt-tab-item>
        <mt-tab-item id="2"
          >订单
          <img
            src="../../public/img/mes.png"
            alt=""
            slot="icon"
            v-if="aaa == '2'"
          />
          <img src="../../public/img/mes1.png" alt="" slot="icon" v-else />
        </mt-tab-item>
        <mt-tab-item id="3"
          >消息
          <img
            src="../../public/img/mess.png"
            alt=""
            slot="icon"
            v-if="aaa == '3'"
          />
          <img src="../../public/img/mess1.png" alt="" slot="icon" v-else />
        </mt-tab-item>
        <mt-tab-item id="4"
          >我的
          <img
            src="../../public/img/me.png"
            alt=""
            slot="icon"
            v-if="aaa == '4'"
          />
          <img src="../../public/img/me1.png" alt="" slot="icon" v-else />
        </mt-tab-item>
      </mt-tabbar>
    </div>
    <!-- 底部结束 -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      aaa: "1",
    };
  },
};
</script>
<style scoped>
.beijing {
  background-image: url(../../public/img/back.jpg);
  background-repeat: no-repeat;
  /* background-size: 100%; */
}
/* 设置面板样式 */
.inline {
  width: 100%;
  margin-top: 50px;
  margin-bottom: 60px;
}
.inline img {
  width: 40%;
  border-radius: 10px;
  padding-left: 5px;
  box-sizing: border-box;
}
.inline div {
  display: inline-block;
  width: 60%;
  position: relative;
  top: 5px;
}
/* 让右侧div与左侧div居中对齐 */
.inline .first {
  vertical-align: middle;
  text-align: left;
  padding-left: 5px;
  /* 设置为怪异盒子模型 */
  box-sizing: border-box;
}
.inline .first h3 {
  margin-bottom: 10px;
  color: rgb(19, 1, 1);
}
.inline .first p {
  margin-bottom: 10px;
  color: rgb(22, 0, 0);
}
.inline .first div {
  margin-bottom: 10px;
}
.inline .first div span {
  background-color: hsl(177, 100%, 57%);
  color: #0a8ef3;
  border-radius: 5px;
  margin-right: 5px;
  padding: 5px;
}
.inline .first p .a {
  color: rgb(255, 76, 11);
  font-size: 20px;
}
.inline .first p .b {
  color: #797878;
  font-size: 10px;
}
.inline .first p .c {
  color: #4b4b4b;
  font-size: 10px;
  margin-left: 15px;
}
/* .inline #more{
  color:#fff;
}
 .inline #more1{
  color:#fff;
} */
</style>