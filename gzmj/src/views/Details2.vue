<template>
  <div class="beijing">
    <!-- 头部标题开始 -->
    <div>
      <mt-header title="专题详情">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <!-- 头部标题结束 -->
    <!-- 面板开始 -->
    <div>
      <!-- 农家乐大标题开始 -->
      <div class="title">
        <h1>火车站周边农家乐</h1>
        <p class="two">火车站周边介绍火车站周边介绍火车站周边介绍</p>
        <p>火车站周边介绍</p>
      </div>
      <!-- 农家乐大标题结束 -->
    </div>
    <!-- 热门标题开始 -->
    <div>
      <div class="hottitle">
        <span>⭕</span><span class="title">热门推荐</span><span>⭕</span>
      </div> 
    </div>
    <!-- 热门标题结束 -->
    <!-- 推荐列表开始 -->
    <div class="dis">
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/1.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/2.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/3.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/4.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/5.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
      <router-link to="/details">
        <div class="a">
          <img src="../../public/img/6.png" alt="" />
          <div>
            <b>梧桐人家农家乐</b>
            <p class="price">原价<del>￥963.00</del></p>
            <p class="day">
              <span>￥200/天</span>
              <button>联系电话</button>
            </p>
          </div>
        </div>
      </router-link>
    </div>
    <!-- 推荐列表结束 -->
    <!-- 面板结束 -->
  </div>
</template>
<script>
export default {
  mounted(){
    console.log("1")
  }
}
</script>
<style scoped>
.beijing {
  background-image: url(../../public/img/back.jpg);
  background-repeat: no-repeat;
  /* background-size: 100%; */
}
/* 农家乐大标题 */
.title {
  text-align: center;
  margin-top: 20px;
}
.title h1 {
  font-size: 25px;
  color: #ddd8d8;
}
.title p {
  font-size: 15px;
  color: #c4c4c4;
}
.title .two {
  margin-top: 10px;
  margin-bottom: 10px;
}

/* 热门标题 */
.hottitle {
  margin-top: 30px;
  text-align: center;
}
.hottitle .title {
  font-size: 20px;
  color: #ddd8d8;
}
.hottitle span {
  vertical-align: middle;
}
/* 推荐列表 */
.dis {
  width: 100%;
}
.dis .a {
  width: 50%;
  box-sizing: border-box;
  display: inline-block;
  text-align: left;
}
.dis .a img {
  width: 93%;
  border-radius: 10px;
  margin: 5px;
}
.dis .a div {
  width: 170px;
}
.dis .a b {
  color: black;
  font-weight: bold;
  margin-left: 5px;
}
.dis .a .price {
  color: #010;
  font-size: 10px;
  margin-top: 5px;
  margin-bottom: 5px;
  margin-left: 5px;
}
.dis .a p span {
  font-size: 18px;
  color: rgb(255, 68, 0);
}
.dis .a .day {
  text-align: left;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.dis .a p button {
  border: none;
  background-color: rgb(248, 250, 249);
  border-radius: 5px;
  position: relative;
  margin-right: 0px;
  font-size: 13px;
}
</style>
