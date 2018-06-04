<script>
   //获取表头复选框节点
    var  che=document.getElementById("cAll");
   //获取表中的复选框节点
    var  arr = document.getElementsByClassName("checkbox1");
   //获得文本框节点
    var pri=document.getElementsByClassName("price");
   //获取总价格节点
    var totalPrice=document.getElementById("total");
   //获取价格节点
    var priceNum=document.getElementsByClassName("money");
   //将表头复选框绑定点击事件
    checkO();
    function checkO(){
        for(var i=0;i<arr.length;i++){
            arr[i].onclick=function(){
                check();
            }
        }
    }
    for(var i=0;i<pri.length;i++){
        pri[i].onkeyup=function(){

              tolPrice(this);
             totalAll();

        }
    }
