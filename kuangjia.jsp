<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <style>
        table{
            width: 500px;
            text-align: center;
            font-size: 30px;
        }
    </style>
</head>
<body>
    <table border="1" cellspacing="0">
        <thead>
            <tr>id
                <th >全选 <input type="checkbox" id="cAll" onclick="checkAll()"/></th>
                <th>商品名称</th>
                <th>单价</th>
                <th>数量</th>
                <th>价格</th>
            </tr>
        </thead>
        <tbody id="tbody1">
            <tr>
                <td><input type="checkbox" class="checkbox1"  /></td>
                <td>康师傅</td>
                <td>4</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td >
            </tr>
            <tr>
                <td><input type="checkbox" class="checkbox1"/></td>
                <td>冰红茶</td>
                <td>3</td>
                <td><input type="text" name="" class="price"/></td>
                <td class="money">0</td>
            </tr>
            <tr>
                <td ><input type="checkbox" class="checkbox1"/></td>
                <td>雪碧</td>
                <td>3</td>
                <td><input type="text" class="price"/></td>
                <td class="money">0</td>
            </tr>
        </tbody>
    </table>
     <sapn>总价：</sapn><span id="total">0</span><span>￥</span>
</body>
<script>