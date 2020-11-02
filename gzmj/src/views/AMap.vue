<!-- home -->
<template>
  <div class="c1">
    <mt-header :title="info.title" fixed>
      <div slot="left">
        <mt-button icon="back" @click="a"></mt-button>
      </div>
    </mt-header>
    <!-- <div class="baidumap" id="allmap"></div> -->
    <div id="container"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      info: {},
    };
  },
  mounted() {
    // this.baiduMap();
    let id = this.$route.params.id;
    // console.log(id);
    this.axios.get("/details?id=" + id).then((res) => {
      // console.log(res.data.result);
      let data = res.data.result;
      this.info = data;
      // console.log(this.info)

      var map = new BMap.Map("container"); // 创建地图实例
      var point = new BMap.Point(this.info.jd, this.info.wd); // 创建点坐标
      //初始化地图实例
      map.centerAndZoom(point, 15); // 初始化地图，设置中心点坐标和地图级别
      map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
      map.addControl(new BMap.NavigationControl()); //缩放控件
      map.addControl(new BMap.ScaleControl()); //比例尺控件
      map.addControl(new BMap.MapTypeControl()); //地图类型控件
      map.addControl(new BMap.GeolocationControl()); //定位控件

      //创建Size对象
      let iconsize = new BMap.Size(32, 32);
      // 创建图标对象
      let icon = new BMap.Icon(
        "http://api.map.baidu.com/img/markers.png",
        new BMap.Size(23, 25),
        {
          offset: new BMap.Size(10, 25), // 指定定位位置
          imageOffset: new BMap.Size(0, 0 - 11 * 25), // 设置图片偏移
        }
      );
      // 创建图像覆盖物对象
      let marker = new BMap.Marker(point, {
        icon: icon,
      });
      // 将覆盖物对象添加到地图上
      map.addOverlay(marker);

      var sContent =
        '<div style="width:300px;"><p style="font-size:16px;font-weight:bold;margin-top: 10px;color:#D07852">' +
        this.info.title +
        '</p><p style="font-size:13px;margin: 5px 0;">地址：' +
        this.info.address +
        '</p><p style="font-size:13px;margin: 5px 0;">电话：' +
        Math.ceil((Math.random()*10+1)*100000) +
        '</p><p style="font-size:13px;margin: 5px 0;">坐标：' +
        this.info.jd +
        "," +
        this.info.wd;

      var infoWindow = new BMap.InfoWindow(sContent);
      marker.addEventListener("click", function() {
        this.openInfoWindow(infoWindow);
      });
    });
  },

  methods: {
    a() {
      let id = this.$route.params.id;
      // console.log(id)
      this.$router.push("/details/" + id).catch((e) => {});
    },

  },
};
</script>
<style>
.c1{
  height: 100%;
}
#container {
  width: 100%;
  height: 100%;
}
/* 去除百度地图版权那行字 和 百度logo */
/* .baidumap > .BMap_cpyCtrl {
  display: none !important;
}
.baidumap > .anchorBL {
  display: none !important;
} */
</style>
