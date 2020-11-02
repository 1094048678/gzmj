<template>
    <div>
         <div>
            <mt-header class="head" title="订单" fixed></mt-header>
       </div>
         <!-- 顶部选项卡开始 -->
        <div>
            <mt-navbar class="head_top">
                <mt-tab-item>全部</mt-tab-item>
                <mt-tab-item>待付款</mt-tab-item>
                <mt-tab-item>待完结</mt-tab-item>
                <mt-tab-item>待评价</mt-tab-item>
                <mt-tab-item>退款/售后</mt-tab-item>
            </mt-navbar>
        </div>
        <div>
            <mt-tab-container>
                <mt-tab-container-item>
                     <div class="a">
                    <div class="info">
                    <img src="../assets/images/1.png" class="img">
                    <div class="info_small">
                            <span class="font_1">大玩家乐派农家乐<span class="font_7">已取消</span></span>
                            <p class="time">下单时间：2019-12-25</p>
                            <span class="font_3">定金：
                                <span class="font_4">未支付</span>
                                <span class="font_5">2人</span>
                            </span>
                    </div>
                </div>
                </div>
                 <div class="a">
                    <div class="info">
                    <img src="../assets/images/1.png" class="img">
                    <div class="info_small">
                            <span class="font_1">大玩家乐派农家乐<span class="font_7">已退款</span></span>
                            <p class="time">下单时间：2019-12-25</p>
                            <span class="font_3">定金已退款
                                <span class="font_5">2人</span>
                            </span>
                    </div>
                </div>
                    <button class="btn_1">退款进度</button>
                </div>
                </mt-tab-container-item>
            </mt-tab-container>
        </div>
    </div>
</template>
<style>
.main{
    margin-bottom: 55px;
}
.btn_1{
    float: right;
    margin-right: 10px;
    border-radius: 10px;
    /* border: 1px solid #999; */
    border: none;
    background-color: gold;
    color: #fff;
}
.a{
    margin-bottom: 30px;
}
    .head{
        font-size: 8px;
        text-align: center;
    }
    .head_top{
        font-size: 14px;
        display: flex;
        justify-content: space-around;
        margin-top: 40px;
    }
    .info{
        display: flex;
        justify-content:left;
        /* height: 100px; */
        padding: 5px;
        margin: 5px;
    }
    .img{
        height: 100px;
        border-radius: 5px;
    }
    .time{
        font-size: 12px;
    }
    .info_small{
        display: inline-block;
        vertical-align: middle;
        margin-left: 10px;
    }
    .btn{
        float: right;
        margin-right: 10px;
        border-radius: 20px;
        border: 1px #999 solid;
        color: #999;
        background-color: #fff;
    }
    .text{
        display: inline-block;
        vertical-align:bottom;
    }
    .font_3{
        display: inline-block;
        margin-top: 20px;
        font-size: 14px;
    }
     .font_1{
        display: inline-block;
        margin-bottom: 35px;
        font-weight: bolder;
    }
    .font_4{
        color: red;
    }
    .font_5{
        margin-left: 90px;
        font-size: 12px;
    }
    .font_7{
        font-weight: normal;
        margin-left: 30px;
        font-size: 12px;
        color: gold;
    }
</style>