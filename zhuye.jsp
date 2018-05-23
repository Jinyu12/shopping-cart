<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>商品列表页面</title>
        <!--商品列表样式表-->
        <link rel="stylesheet" type="text/css" href="../css/index.css" />
        <!--cookie操作的js库-->
        <script src="../js/cookie.js" type="text/javascript" charset="utf-8"></script>
    </head>

    <body>
        <div class="container">
            <h1>商品列表</h1>
            <div class="mycar">
                <a href="cart.html">我的购物车</a><i id="ccount">0</i>
            </div>
            <div class="list">
                <dl pid="1001">
                    <dt>
                        <img src="../images/p1.jpg" />
                    </dt>
                    <dd>智能手表</dd>
                    <dd>1111111</dd>
                    <dd>￥<span>998</span></dd>
                    <dd>
                        <button>添加购物车</button>
                    </dd>
                </dl>
                <dl pid="1002">
                    <dt>
                        <img src="../images/p2.jpg" />
                    </dt>
                    <dd>智能手机001</dd>
                    <dd>1111111</dd>
                    <dd>￥<span>1998</span></dd>
                    <dd>
                        <button>添加购物车</button>
                    </dd>
                </dl>
                <dl pid="1003">
                    <dt>
                        <img src="../images/p3.jpg" />
                    </dt>
                    <dd>华为手机002</dd>
                    <dd>111111</dd>
                    <dd>￥<span>998</span></dd>
                    <dd>
                        <button>添加购物车</button>
                    </dd>
                </dl>
                <dl pid="1004">
                    <dt>
                        <img src="../images/p4.jpg" />
                    </dt>
                    <dd>华为手机003</dd>
                    <dd>11111</dd>
                    <dd>￥<span>2000</span></dd>
                    <dd>
                        <button>添加购物车</button>
                    </dd>
                </dl>
            </div>
        </div>
        <!--
            描述：数据访问层，操作本地数据的模块
        -->
        <script type="text/javascript" src="../js/server.js"></script>
        <!--
            描述：本页面的js操作
        -->
        <script type="text/javascript" src="../js/index.js"></script>
    </body>

</html>