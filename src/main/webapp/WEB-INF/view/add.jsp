<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index3.css" type="text/css">
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$(function(){
	$.post("getDate",function(obj){
		for ( var i in obj) {
		$("[name='tid']").append("<option value='"+obj[i].tid+"'>"+obj[i].tname+"</option>");	
		}
	},"json")
})
</script>
</head>
<body>
<form action="Add">
<table>
<tr>
<td>影片名</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>导演</td>
<td><input type="text" name="douctor"></td>
</tr>
<tr>
<td>票价</td>
<td><input type="text" name="price"></td>
</tr>
<tr>
<td>上架时间</td>
<td><input type="date" name="sdate"></td>
</tr>
<tr>
<td>时长</td>
<td><input type="text" name="stime"></td>
</tr>
<tr>
<td>类型</td>
<td>
<select name="tid">

</select>
</td>
</tr>
<tr>
<td>年代</td>
<td><input type="text" name="nd"></td>
</tr>
<tr>
<td>区域</td>
<td><input type="text" name="qy"></td>
</tr>
<tr>
<td>状态</td>
<td><input type="text" name="zt"></td>
</tr>
<tr>
<td colspan="10">
<button>添加</button>
</td>

</tr>
</table>
</form>
</body>
</html>