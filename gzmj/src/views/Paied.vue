<template>
    <div>
        <mt-header title="商家信息" fixed>
            <router-link to="/" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
        </mt-header>
        <div class="d" >
            <img src="../../public/image/dingdan.png" alt="">
            <p class="pag">商家会在30分钟内联系您,请注意接听电话</p>
        </div>
        <div>
            <h4>订单信息</h4>
        </div>
        <div>
            <h4>大玩家乐派水上乐园</h4>
        </div>
        <div>
            <p class="page">
                <span class="span1">联系人</span>
                <span class="span2">大哥</span>
            </p>
            <p class="page">
                <span class="span1">联系电话</span>
                <span class="span2">13110120114</span>
            </p>
            <p class="page">
                <span class="span1">到店日期</span>
                <span class="span2">2020-10-10 10:10</span>
            </p>
            <p class="page">
                <span class="span1">离店日期</span>
                <span class="span2">2020-10-11 10:10</span>
            </p>
            <p class="page">
                <span class="span1">游玩时间</span>
                <span class="span2">1天</span>
            </p>
            <p class="page">
                <span class="span1">成人价格</span>
                <span class="span2">￥68×1人×1天=￥68.00</span>
            </p>
            <p class="page">
                <span class="span1">儿童价格</span>
                <span class="span2">￥68×1人×1天=￥68.00</span>
            </p>
            <div>
                <p class="dd">合计：<span class="span3">￥136.00</span></p>
            </div>
        </div>
        <div>
            <router-link to="/order" class="fanhui">返回首页</router-link>
        </div>
    </div>
</template>
<style>
.fanhui{
    position: absolute;
    bottom: 0;
    left: 0;right: 0;
    text-align: center;
    height: 50px;
    line-height: 50px;
    border: 3px solid #26a2ff;
    margin: 15px;
    border-radius: 15px;
    text-decoration: none;
    color: #26a2ff;
}

.pag{
    margin-left: 60px;
}
.dd{
    float: right;
    margin-right: 10px;
    margin-bottom: 30px;
}
.span3{
    color: #f00;
}
.page{
    margin-bottom: 10px;
    margin-left: 10px;
}
 .span1{
    margin-left: 10px;
    font-size: 12px;
    color: #999;
}
.span2{
    margin-right: 10px;
    font-size: 12px;
    color: #000;
}
div>p{
    display: flex;
    justify-content: space-between;
}
.button{
    width: 370px;
    border: 0;
    margin: 0 3px;
}
    .d{
        margin-top :50px;
        text-align: center;
    }
    .d>img{
        margin-bottom: 10px;
    }
    .d>p{
        font-size: 14px;
        color: #999;
    }
    h4{
        margin:20px 0 10px 10px;
    }
</style>