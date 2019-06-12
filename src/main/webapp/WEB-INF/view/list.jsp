<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/index3.css" type="text/css">
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
//全选
function qx(){
	$(":checkbox").attr("checked",true);
}
//反选
function fx(){
	$(":checkbox").each(function(){
		$(this).attr("checked",!$(this).attr("checked"));
	})
}
//批量删除
function plsc(){
	var id="";
	$(":checkbox:checked").each(function(){
		id+=","+$(this).val();
	})
	$.post("delete",{id:id},function(flag){
		if(flag){
			alert("批量删除成功!");
			location="list.jsp";
		}else{
			alert("批量删除失败!");
		}
	},"json")
}
function tj(){
	location="add.jsp";
}
</script>
</head>
<body>
<form action="list" method="post">
<input type="text" name="name"><button>查询</button>
</form>
<button onclick="tj()">添加影片</button>
<table>
<tr>
<td></td>
<td>影片名</td>
<td>导演</td>
<td>票价</td>
<td>上架时间</td>
<td>时长</td>
<td>类型</td>
<td>年代</td>
<td>区域</td>
<td>状态</td>
<td>操作</td>
</tr>
<c:forEach items="${list }" var="l">
<tr>
<td><input type="checkbox" value="${l.id }"></td>
<td>${l.name }</td>
<td>${l.douctor }</td>
<td>${l.price }</td>
<td>${l.sdate }</td>
<td>${l.stime }</td>
<td>${l.tid }</td>
<td>${l.nd }</td>
<td>${l.qy }</td>
<td>${l.zt}</td>
<td>
<button>详情</button>
<button>编辑</button>
<button>下架</button>
</td>
</tr>
</c:forEach>
<tr>
<td colspan="10">
${page }
<button onclick="qx()">全选</button>
<button onclick="fx()">反选</button>
<button onclick="plsc()">批量删除</button>
</td>
</tr>
</table>
</body>
</html>