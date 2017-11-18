<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>P�gina de invet�rio dos Produtos</h1>

            <p class="lead">� isso ai mlk doido!!!!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Foto Produto</th>
                <th>Nome Produto</th>
                <th>Categoria</th>
                <th>Condi��o</th>
                <th>Pre�o</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="#" alt="image"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/listaDeProdutos/detalheProduto/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
        <a href="<c:url value="/admin/inventarioProduto/addProduto" />" class="btn btn-primary" >Adicionar Produto</a>

<%@include file="/WEB-INF/view/template/footer.jsp" %>

