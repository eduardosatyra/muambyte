<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/7/2016
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Página de administração</h1>

            <p class="lead">Essa e a página de admin!</p>
        </div>
        
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Bem Vindo: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/login?logout" />">Logout</a>
            </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Inventário de Produtos</a>
        </h3>

        <p>Aqui você pode ver, verificar e modificar o inventário do produto!</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

