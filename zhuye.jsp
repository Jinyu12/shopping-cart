<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <style>
        table{
            width: 700px;
            font-size: 30px;
            text-align: center;
           
        }
    </style>
</head>
<body>
    
  <tbody id="tbody1">
            <tr>
                <td><input type="checkbox" class="checkbox1"  /></td>
                <td>人工智能</td>
                <td>43</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td >
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox1"/></td>
                <td>计算机网络</td>
                <td>38</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td >
            </tr>
           <tr>
                <td><input type="checkbox" class="checkbox1"  /></td>
                <td>JavaWeb</td>
                <td>34</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td >
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox1"  /></td>
                <td>软件工程</td>
                <td>38</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td >
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox1"/></td>
                <td>教育学</td>
                <td>27</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td>
            </tr>
            <tr>
                <td ><input type="checkbox" class="checkbox1"/></td>
                <td>学科教学论</td>
                <td>30</td>
                <td><input type="text" class="price"/></td>
                <td class="money">0</td>
            </tr>
        </tbody>
    </table>  
    
       <font face="times" color="red" size="5"><sapn>总价：</sapn><span id="total">0</span><span>￥</span></font>
  <button id="deletecheck" ng-click="deleteCheck()">清除所选</button>  
                <button id="deleteall" ng-click="deleteAll()">清空购物车</button>  
</body>

