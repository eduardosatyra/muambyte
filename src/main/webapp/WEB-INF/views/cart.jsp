<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Seu carrinho de compras</h1>

                    <p>Todos os produtos selecionados em seu carrinho de compras</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Limpar Carrinho</a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>Produto</th>
                    <th>Preço unitário</th>
                    <th>Quantidade </th>
                    <th>Preço</th>
                    <th>Ação</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>Remover</a></td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Preço Total</th>
                    <th>{{cart.grandTotal}}</th>
                    <th></th>
                </tr>
            </table>

            <a href="<spring:url value="/productList" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>

    </div>
</div>

<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>

