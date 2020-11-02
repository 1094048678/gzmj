<template>
  <div>
    <mt-header title="评价" class="noeval_one" fixed>
      <router-link to="/order" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="first">
      <span>评分</span>
      <span class="span_1">☆☆☆☆</span>
      <span>☆</span>
      <span class="span_2">5.0分</span>
    </div>
    <div class="text">
      <textarea
        class="textarea"
        cols="30"
        rows="10"
        maxlength="100"
        placeholder="分享你的购买心得"
      ></textarea>
    </div>
    <div>
      <p class="p">添加照片</p>
      <a class="aa">
        <p><img src="../../public/img/jia.png" alt="" /></p>
        <p>添加图片</p>
      </a>
    </div>
    <div class="btn_2">
      <mt-button type="primary">提交</mt-button>
    </div>
  </div>
</template>
<style>
.text{
    margin: 15px;
}
textarea{
    border: none;
}
.btn_2{
    position: absolute;
    bottom: 0;
    right: 0;
    left: 0;    
}
.btn_2 button{
  width: 100%;
}
.first:first-child {
  font-weight: bolder;
}
.aa {
  display: inline-block;
  padding: 5px;
  margin-left: 20px;
  cursor: pointer;
}
.aa img {
  margin-left: 5px;
}
.aa:last-child {
  font-size: 12px;
}
.p {
  margin: 80px 0 10px 10px;
  font-weight: bolder;
}
/* .textarea {
  width: 365px;
  max-height: 100px;
  min-height: 100px;
  margin-left: 1px;
} */

.span_1 {
  color: gold;
  margin-left: 10px;
}
.span_2 {
  color: gold;
  margin-left: 10px;
}
.first {
  margin: 60px 0 10px 10px;
  font-weight: bolder;
}
.first span{
    font-size:20px;
}
</style>
