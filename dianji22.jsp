//计算总价格
    function totalAll(){
        var total=0;

           for(var i=0;i<arr.length;i++){
              if(arr[i].checked==true){
                  total+=parseFloat(priceNum[i].innerHTML);
              }
           }
            totalPrice.innerHTML=total+"";
    }
   function checkAll(){
           for(var i=0;i<arr.length;i++){
               arr[i].checked=che.checked;
           }
       //计算总金额
           totalAll();
   }
    function check(){
        var num=6;
        for(var i=0;i<arr.length;i++){
            if( arr[i].checked==false){
                che.checked=false;
                num--;
            }
        }
        if(num==6){
            che.checked=true;
        }
        totalAll();
    }
</script>
</html>

