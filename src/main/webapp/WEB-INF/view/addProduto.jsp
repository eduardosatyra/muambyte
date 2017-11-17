<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Adicionar Produto</h1>

            <p class="lead">Peencha o formulario para adicionar um produto...</p>
        </div>


		<form:form action="#" method="post" commandName="product">
			<div class="form-group">
				<label for="name">Nome:</label>
				<form:input path="productName" id="name" class="form-Control" />
			</div>
			
		
		</form:form>
        
		
<%@include file="/WEB-INF/view/template/footer.jsp"%>

