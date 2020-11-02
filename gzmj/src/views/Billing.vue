<template>
    <div class="page">
         <div class="personal">
          <router-link to="" slot="left">
              <span class="a">&lt;</span> 
          </router-link>
    <span>账单记录</span>
   </div>
   <div class="data2">
      <div>充值</div>
      <div>-&nbsp;199.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div>
    <div class="data">
      <div>充值</div>
      <div>+&nbsp;5.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div> <div class="data">
      <div>充值</div>
      <div>+&nbsp;5000.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div>
    <div class="data">
      <div>充值</div>
      <div>+&nbsp;20000.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div>
    <div class="data2">
      <div>充值</div>
      <div>-&nbsp;5.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div> <div class="data">
      <div>充值</div>
      <div>+&nbsp;200.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div> <div class="data">
      <div>充值</div>
      <div>+&nbsp;5.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div> <div class="data2">
      <div>充值</div>
      <div>-&nbsp;3000.00</div>
      <div>20120-10-17 &nbsp;&nbsp;&nbsp;&nbsp;10:59</div>
   </div>
    </div>
</template>
<style  scoped>

    .page{
        background: #f5f5f5;
    }
    .personal{
        background: #fff;
    }
    .data{
        margin-right: 10px;
        margin-left: 10px;
        height: 70px;
        background: #ffffff;
        margin-top: 10px;
    }
      .data2{
        margin-right: 10px;
        margin-left: 10px;
        height: 70px;
        background: #ffffff;
        margin-top: 10px;
    } .data2>div:first-child{
        font-weight: 700;
        font-size: 25px;
        
    }
    .data2>div:nth-child(2){
        text-align: right;
        font-weight: 600;
        font-size: 20px;
       color:gray;
    }
      .data2>div:nth-child(3){
          font-weight: 600;
        font-size: 10px;
        color:gray;
    }
    .data>div:first-child{
        font-weight: 700;
        font-size: 25px;
        
    }
    .data>div:nth-child(2){
        text-align: right;
        font-weight: 600;
        font-size: 20px;
        color: #FF8048;
    }
      .data>div:nth-child(3){
          font-weight: 600;
        font-size: 10px;
        color:gray;
    }
           .p{
            margin-top: 40px;
            }
            .personal .a{
            font-size: 30px;
            color: #ccc;
            margin-left: 5px;
             margin-top: 20px;
            display: inline-block;
            text-decoration: none;
            }
            .personal>span{
            display:inline-block;
            margin-left: 120px;
             font-size: 20px;
            color: black;
            }
 </style>