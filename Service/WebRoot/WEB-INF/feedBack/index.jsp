<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<%@include file="../../common.jsp" %>
    <link href="${pageContext.request.contextPath}/css/pages/faq.css" rel="stylesheet" /> 
    
  </head>
  <body>

<jsp:include page="../common_top.jsp"></jsp:include>	
<div id="content">
	<div class="container">
		<div class="row">
			<div class="span3">
				<jsp:include page="../common_left.jsp"></jsp:include>
			</div> <!-- /span3 -->
			<div class="span9">
				<h1 class="page-title">&nbsp; 
					用户反馈信息管理					 
				</h1>
				
				<div class="widget widget-table">
					
					<div class="widget-header">
						<h3>列表信息</h3>
					</div> <!-- /widget-header -->
														
					<div class="widget-content">
						
								<table class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>邮箱	</th>
											<th>内容</th>
											<th>添加时间	</th>
											<th>操作	</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${pu.data }" var="pd">
										<tr>
											<td>${pd.email }</td>
											<td>
											  <c:if test="${fn: length(pd.content)>11}">  
									          	${fn: substring(pd.content, 0, 12)}...
									          </c:if> 
									          <c:if test="${fn: length(pd.content)<=11}">
									          	${pd.content}
									          </c:if> 
											</td>
											<td>${pd.addTime }</td>
											<td>
											<a class="btn" onclick="del('bg/user!delFeedBack?id=${pd.id}')"><i class="icon-remove" style="cursor: pointer;"></i></a>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>	
						
					</div> <!-- /widget-content -->
					<ul class="pager">
					<c:choose>
						<c:when test="${pu.isFrist }">首页&nbsp;</c:when>
						<c:otherwise>
							<li><a href="${pu.url }?pageNow=1">首页</a></li>&nbsp;</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${pu.hasPre }">
							<li><a href="${pu.url }?pageNow=${pu.pageNow - 1}">上一页</a></li>&nbsp;</c:when>
						<c:otherwise>上一页&nbsp;</c:otherwise>
					</c:choose> 
					<c:forEach items="${pu.navigatePages }" var="pnp">
						<c:choose>
							<c:when test="${pu.pageNow == pnp }">
								<c:out value="${pnp }"></c:out>&nbsp;</c:when>
							<c:otherwise>
								<li><a href="${pu.url }?pageNow=${pnp}">
								<c:out	value="${pnp }"></c:out></a></li>&nbsp;</c:otherwise>
						</c:choose>

					</c:forEach>
					 <c:choose>
						<c:when test="${pu.hasNext }">
							<li><a href="${pu.url }?pageNow=${pu.pageNow + 1}">下一页</a></li>&nbsp;</c:when>
						<c:otherwise>下一页&nbsp;</c:otherwise>
					</c:choose>
					 <c:choose>
						<c:when test="${pu.isLast }">末页&nbsp;</c:when>
						<c:otherwise>
							<li><a href="${pu.url }?pageNow=${pu.pageTotal}">末页</a></li>&nbsp;</c:otherwise>
					</c:choose> 总共${pu.total }条记录
					</ul>
				</div> <!-- /widget -->
			</div> <!-- /span9 -->
		</div> <!-- /row -->
	</div> <!-- /container -->
</div> <!-- /content -->
					
<jsp:include page="../common_bottom.jsp"></jsp:include>

<jsp:include page="../common_modal.jsp"></jsp:include>

<script type="text/javascript">
$(window).load(function() {
           if('${msg}' != null && "" != '${msg}'){
           		if('${msg}' == 1){
           			$.scojs_message("操作成功", $.scojs_message.TYPE_OK);
           		}else{
           			$.scojs_message("操作失败", $.scojs_message.TYPE_ERROR);
           		}
           }
        });

</script>
  </body>
</html>
