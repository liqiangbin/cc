<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@ page language="java" import="pojo.*,Dao.*,java.util.*" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<script src="<%=request.getContextPath() %>/js/angular.min.js"></script>
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
		<div class="lujin">
			<ol class="breadcrumb">
				<li><a href="#">Home</a>
				</li>
				<li><a href="#">Library</a>
				</li>
				<li class="active">Data</li>
			</ol>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="pleft">
						<center>
							<img src="images/20417467-1_b.jpg" weight="600px" width="300px" class="img-thumbnail">
							<br>
							<br>

							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">
							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">
							<img src="images/20417467-1_b.jpg" weight="100px" width="60px" class="img-thumbnail">

					</div>
					</center>

					<div class="pright">
						<div class="clear">
							<div class="panel panel-default">
								<div class="panel-body">
<% Product pro=new Product();
ProductDao dao=new ProductDao();
Integer id;
id=Integer.parseInt(request.getParameter("id"));
			
				ArrayList<Product>list=new ArrayList<Product>();
				list=dao.showoneproduct(id);
				%>
									<table class="table">
										<tr align="center">
										<td colspan="2">
										<h3><%=list.get(0).getPname() %></h3>
										</td></tr>

										<tbody>
											<tr>
												<td align="right" width="20%">���ߣ�</td>
												<td align="left"><%=list.get(0).getAuthor() %></td>
											</tr>
											<tr>
												<td align="right" width="20%">�����磺</td>
												<td align="left"><%=list.get(0).getPublish() %> </td>
											</tr>
											<tr>
												<td align="right" width="20%">ͼ���飺</td>
												<td align="left"><%=list.get(0).getPdesc()%> </td>
											</tr>
											<tr>
												<td align="right">�۸�</td>
												<td align="left"><%=list.get(0).getPrice() %></td>
											</tr>
											<tr>
												<td align="right">�ۿۣ�</td>
												<td align="left"><%=list.get(0).getDiscount() %></td>
											</tr>
											<tr>
												<td align="right" width="20%">��棺</td>
												<td align="left"><%=list.get(0).getTotal() %>�� </td>
											</tr>
											<tr>
												<td align="right">�ۼ����ۣ�</td>
												<td align="left"><a href="#pj"><%=list.get(0).getPjnum()%></a>
												</td>
												
											</tr>
											<tr>
												<td align="right">��������</td>
												<td align="left"><%=list.get(0).getSeald() %>�� <a href="">�����ҹ�ͨ</a>
												</td>
											</tr>
											<tr>
												<td align="right">��Ҫ��</td>
												<td align="left">
													<input type="number" ng-model="num1"  placeholder ="1" >
															��</td>
											</tr>

											<tr>
												<td align="right">
													<button type="button" class="btn btn-warning"><strong>���빺�ﳵ</strong>
													</button>
												</td>
												<td align="center">
													<button type="button" class="btn btn-warning"><strong>ֱ�ӹ���</strong>
													</button>
												</td>
											</tr>
										</tbody>
									</table>

									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<p id="pj">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">��Ʒ����</h3>
				</div>
				<div class="panel-body">
				<%pj pj=new pj();
				 PjDao dao1=new  PjDao();
								ArrayList<pj> listpj=new ArrayList<pj>();
								listpj=dao1.showpjByproduct(id); %>
			<table class="table table-hover" width=80%>
   
   <thead>
      <tr>
         <th width="25%">������</th>
         <th width="50%" align="center">��������</th>
         <th width="25%">����ʱ��</th>
      </tr>
   </thead>
   <tbody>
   <% for(int i=0;i<listpj.size();i++){%>
	    <tr>
         <td><%=listpj.get(i).getUname() %></td>
         <td ><%=listpj.get(i).getPjcontent() %></td>
         <td><%=listpj.get(i).getPjtime() %></td>
      </tr>
	  <% 
   }
	   %>
   </tbody>
</table>
					<br>
				</div>
			</div>
			</p>
		</div>

		<!--
        	������ҳ��
        -->
		<div class="text-primary-footer">
			<p>�������� &nbsp;&nbsp;| &nbsp;&nbsp;2012221&nbsp;&nbsp; |&nbsp;&nbsp; ����ʵѵ�γ���� </p>
			<p>��ҳ &nbsp;&nbsp;| &nbsp;&nbsp;��������&nbsp;&nbsp; |&nbsp;&nbsp; ��Ȩ���� &nbsp;&nbsp;����ؾ� </p>
		</div>

		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>

</html>