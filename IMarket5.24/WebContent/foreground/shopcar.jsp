<%@ page language="java"  import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
		<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
		<link href="<%=request.getContextPath() %>/css/before.css" rel="stylesheet" media="screen" type="text/css">
		 <script src="<%=request.getContextPath() %>/js/jquery.js"></script>
   <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<div>
				<nav class="navbar navbar-default navbar-fixed-top">
					<div class="rowtop">
						<div class="col-md-1">&nbsp;</div>
						<div class="col-md-5">
							��ӭ����<b>IMarket</b> &nbsp;&nbsp;
							<a href="login.html">��½</a>|<a href="reg.html">ע��</a>
						</div>
						<div class="col-md-3">&nbsp;</div>
						<div class="col-md-3">
							<a href="#">���ﳵ</a>|<a href="#">�ҵĶ���</a>|<a href="#">������Ϣ</a>|<a href="#">�˳�</a>
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-md-2 col-md-offset-2">
							<a href="main.html">
								<img src="images/logo.jpg" class="img-rounded" weight="50px" width="100px">
							</a>
						</div>
						<div class="col-md-4 ">
							<input type="text" class="form-control" id="search" placeholder="Jane Doe">
						</div>

						<div class="col-md-2 ">
							<button type="button" class="btn btn-default"><a href="video.html">��   ��</a>
							</button>
						</div>
					</div>

					<nav class="daohang">

						<ul class="nav nav-tabs">

							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">������Ʒ</a>
							</li>
							<li role="presentation"><a href="#">�ƻ�ͼ��</a>
							</li>
							<li role="presentation"><a href="#">���ĵ���</a>
							</li>
							<li role="presentation"><a href="#">ѧ�ƽ̲�</a>
							</li>
							<li role="presentation"><a href="#">ԭ���鼮</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">

              ������Ʒ���� 

               <b class="caret"></b>

            </a>
								<ul class="dropdown-menu">
									<li><a href="#">jmeter</a>
									</li>
									<li><a href="#">EJB</a>
									</li>
									<li><a href="#">Jasper Report</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">���������</a>
									</li>
									<li class="divider"></li>
									<li><a href="#">��һ�����������</a>
									</li>
								</ul>
							</li>
						</ul>

					</nav>

				</nav>
			</div>
		</div>
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="lujin">
					<ol class="breadcrumb">
						<li><a href="#">IMarket</a>
						</li>
						<li>���ﳵ</li>

					</ol>
					<h3><strong >�ҵĹ��ﳵ</strong></h3>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-hover">
				
					<thead>
						<tr>
							<th>��Ʒ����</th>
							<th>����</th>
							<th>��Ʒ��Ŀ</th>
							
							<th>��Ʒ�۸�</th>
							<th>����</th>
						</tr>
					</thead>
					<tbody>
					<% ArrayList<ShopCar>  list=new ArrayList<ShopCar>();
					list=(ArrayList<ShopCar>)session.getAttribute("shopcar");
					double allmoney=0;
					for(int i=0;i<list.size();i++){%>
						<tr>
							<td><%=list.get(i).getPname() %></td>
							<td><%=list.get(i).getAuthor() %></td>
					<td><%=list.get(i).getNum() %></td>
							<td><%=list.get(i).getPrice() %></td>
							<td><a href="<%=request.getContextPath()%>/ShopCarServlet?type=<%="del" %>&id=<%=i%>">ɾ��</a>
						</tr>
					<%
					allmoney=allmoney+list.get(i).getPrice()*list.get(i).getNum();
					}
					%>
						<tr >
							<td>&nbsp;</td>
							<td align="right"><strong>�ϼƣ�</strong></td>
							<td align="center"> <%=allmoney%>
								<strong>Ԫ</strong>
							</td>
						</tr>
						<tr >
							<td>&nbsp;</td>
							<td align="right">
								<button type="button" class="btn btn-warning btn-lg">
									   &nbsp; &nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��  &nbsp;&nbsp;
   </button>
							</td>
							<td>&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="text-primary-footer">
			<p>�������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ����ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>
<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/angular.min.js"></script>
	</body>

</html>