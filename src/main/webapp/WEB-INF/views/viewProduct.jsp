<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Detalhes do Produto</h1>

			<p class="lead">Aqui est�o os detalhes dos Produtos!</p>
		</div>

		<div class="container" ng-app="cartApp">
			<div class="row">
				<div class="col-md-5">
					<img
						src="<c:url value="/resources/images/${product.productId}.png" /> "
						alt="image" style="width: 100%" />
				</div>

				<div class="col-md-5">
					<h3>${product.productName}</h3>
					<p>${product.productDescription}</p>
					<p>
						<strong>Fabricante</strong> : ${product.productManufacturer}
					</p>
					<p>
						<strong>Categoria</strong> : ${product.productCategory}
					</p>
					<p>
						<strong>Condi��o</strong> : ${product.productCondition}
					</p>
					<h4>${product.productPrice}0 R$</h4>

					<br>

					<c:set var="role" scope="page" value="${param.role}" />
					<c:set var="url" scope="page" value="/productList" />
					<c:if test="${role='admin'}">
						<c:set var="url" scope="page" value="/admin/productInventory" />
					</c:if>

					<p ng-controller="cartCtrl">
						<a href="<c:url value="${url}" />" class="btn btn-default">Voltar</a>
						<a href="#" class="btn btn-warning btn-large"
							ng-click="addToCart('${product.productId}')"><span
							class="glyphicon glyphicon-shopping-cart"></span>Adicionar ao
							Carrinho</a> <a href="<spring:url value="/cart" />"
							class="btn btn-default">
							<span class="glyphicon glyphicon-hand-right"></span>Ver o que comprou</a>
					</p>
				</div>
			</div>
		</div>


		<script src="<c:url value="/resources/js/controller.js" /> "></script>
		<%@include file="/WEB-INF/views/template/footer.jsp"%>