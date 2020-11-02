<template>
  <div>
    <div class="main">
      <mt-tab-container>
        <mt-tab-container-item>
          <div class="header_s">
            <div class="swipe">
              <mt-swipe :showIndicators="true" :auto="3000" :speed="300">
                <mt-swipe-item>
                  <img
                    src="../../public/img/1.png"
                  />
                </mt-swipe-item>
                <mt-swipe-item
                  ><img
                    src="../../public/img/2.png"
                /></mt-swipe-item>
                <mt-swipe-item
                  ><img
                    src="../../public/img/3.png"
                /></mt-swipe-item>
                <mt-swipe-item
                  ><img
                    src="../../public/img/4.png"
                /></mt-swipe-item>
                <mt-swipe-item
                  ><img
                    src="../../public/img/5.png"
                /></mt-swipe-item>
              </mt-swipe>
            </div>

            <div class="sousuo_h">
              <input
                type="text"
                class="sousuo_i"
                placeholder="请输入民宿名称"
              />
              <img src="../../public/image/sousuo.png" alt="" />
              <router-link to="/" class="sousuo_a">搜索</router-link>
            </div>
          </div>
          <div>
            <div class="fq">
              <img src="../../public/image/shan.png" alt="" />
            </div>
            <div class="dm">
              <router-link to="/">北京</router-link>
              <router-link to="/">天津</router-link>
              <router-link to="/">河北</router-link>
              <router-link to="/">辽宁</router-link>
              <router-link to="/">山东</router-link>
              <router-link to="/">江苏</router-link>
              <router-link to="/">上海</router-link>
              <router-link to="/">浙江</router-link>
              <router-link to="/">安徽</router-link>
              <router-link to="/">福建</router-link>
              <router-link to="/">广东</router-link>
              <router-link to="/">更多></router-link>
            </div>
          </div>
          <div class="hot">
            <div class="hot_h">
              <img src="../../public/image/hot.png" alt="" />
              <span class="tj">热门推荐</span>
            </div>
            <div class="hot_c">
              <router-link :to="`/details/${res.id}`" class="hot_content" v-for="(res,i) of results1" :key="i">
                <img v-lazy="res.lj" alt="" />
                <h5 class="title">{{res.title}}</h5>
                <p class="details">{{res.details}}</p>
                <div class="xl">
                  <span>销量: {{res.sale}}</span>
                  <div class="hp">
                    <img src="../../public/image/hp.png" alt="" />
                    <span>{{res.good}}%</span>
                  </div>
                </div>
                <p class="price">
                  <span>￥</span><span>{{res.price}}</span><span>/天</span>
                </p>
              </router-link>
              <button>点击查看更多民宿</button>
            </div>

            <div class="zt">
              <span class="tj">专题推荐</span>
              <div class="hot_c">
                <router-link to="/details2" class="hot_content" v-for="(res,i) of results2" :key="i">
                  <img v-lazy="res.lj" alt="" />
                  <h5 class="title">{{res.title}}</h5>
                  <p class="details">{{res.details}}</p>
                </router-link>
                
                <button @click="a">点击查看更多民宿</button>
              </div>
            </div>
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
<script>
export default {
  data() {
    return {
      tabbar: "index",
      results1:[],
      results2:[],
    };
  },
  methods:{
    a(){
      console.log(this.$store.state.isLogined)
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
      //  else if (value == "me"&&this.$store.state.isLogined==1) {
      //   this.$router.push("/me").catch((e) => {});
      // }
    },
  },
  mounted() {
    this.axios.get("/list").then((res) => {
      let result=res.data.results
      result.forEach((item)=>{
        item.lj=require(`../../public/img/`+item.lj)
        this.results1.push(item)
      })
    });
    this.axios.get("/list2").then((res) => {
      let result=res.data.results
      result.forEach((item)=>{
        item.lj=require(`../../public/img/`+item.lj)
        this.results2.push(item)
      })
    });
  },
};
</script>
<style scoped>
.main {
  margin-bottom: 55px;
}
.header_s {
  height: 200px;
  margin-bottom: 20px;
}
.header_s .sousuo_h > img {
  position: absolute;
  left: 25px;
  top: 9px;
}
.sousuo_h {
  /* margin-left: 15px; */
  text-align: center;
  position: relative;
  top: -190px;  
}
.sousuo_i {
  width: 70%;
  margin-right: 14px;
  /* height: 26px; */
  border-radius: 20px;
  padding: 8px 0 8px 35px;
  border: none;
}
.sousuo_a {
  display: inline-block;
  font-size: 18px;
  vertical-align: -2px;
  color: #fff;
}
a {
  text-decoration: none;
  color: black;
}
.swipe {
  height: 200px;
}
.swipe img{
  width: 100%;
  height: 200px;
}
.fq {
  text-align: center;
}
.fq > img {
  padding-bottom: 10px;
}
.dm {
  display: flex;
  flex-wrap: wrap;
  padding: 0 15px 15px;
  justify-content: space-between;
}
.dm a {
  display: inline-block;
  border: 1px solid #f5f6ce;
  width: 70px;
  height: 35px;
  text-align: center;
  line-height: 35px;
  background: #f5f6ce;
  border-radius: 5px;
  margin: 5px;
}
.hot {
  padding: 15px;
}
.tj {
  display: inline-block;
  vertical-align: -4px;
  font-size: 20px;
  font-weight: bold;
  margin-left: 5px;
}
.hot_c {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.hot_c button {
  width: 100%;
  height: 40px;
  margin-top: 20px;
  border: 1px solid #ccc;
  border-radius: 30px;
}
.hot_content {
  margin-top: 15px;
  width: 168px;
}
.hot_content img {
  width: 168px;
  border-radius: 8px;
}
.hot_content .title {
  margin: 8px 0;
  font-size: 18px;
  font-weight: bold;
}
.hot_content .details {
  margin-bottom: 8px;
  white-space: nowrap; 
  text-overflow: ellipsis;
  overflow: hidden;
}
.hot_content .xl {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}
.hot_content .xl > span {
  font-size: 14px;
  color: #666;
}
.hot_content .xl .hp img {
  width: 18px;
  height: 18px;
  vertical-align: -2px;
}
.hot_content .xl .hp span {
  color: #ffff00;
}
.hot_content .price {
  margin-top: 4px;
}
.hot_content .price span {
  color: #ff4000;
}
.hot_content .price span:nth-child(2) {
  font-size: 26px;
}
.zt {
  margin-top: 40px;
}
</style>
