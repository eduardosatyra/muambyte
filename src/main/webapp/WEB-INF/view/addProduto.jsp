<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Adicionar Produto</h1>

			<p class="lead">Peencha o formulario para adicionar um produto...</p>
		</div>


		<form:form
			action="${pageContext.request.contextPath}/admin/inventarioProduto/addProduto"
			method="post" commandName="product" enctype="multipart/form-data">
			<div class="form-group">
				<label for="name">Nome:</label>
				<form:input path="productName" id="name" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="category">Categoria</label> <label
					class="checkbox-inline"></label> <label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="eletronicos" />
					ELetrônicos </label> <label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="camera" /> Camera </label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="imoveis" /> Imoveis </label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="outros" /> Outros </label>
			</div>

			<div class="form-group">
				<label for="description">Descrição:</label>
				<form:textarea path="productDescription" id="description"
					class="form-Control" />
			</div>

			<div class="form-group">
				<label for="price">Preço:</label>
				<form:input path="productPrice" id="price" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="condition">Condição:</label> <label
					class="checkbox-inline"></label> <label class="checkbox-inline"><form:radiobutton
						path="productCondition" id="category" value="novo" /> Novo </label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCondition" id="category" value="usado" /> Usado </label>

			</div>

			<div class="form-group">
				<label for="status">Status:</label> <label class="checkbox-inline"></label>
				<label class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="ativo" /> Ativo </label> <label
					class="checkbox-inline"><form:radiobutton
						path="productStatus" id="status" value="desativo" /> Desativado </label>

			</div>

			<div class="form-group">
				<label for="unitInStock">Unidades em estoque:</label>
				<form:input path="unitInStock" id="unitInStock" class="form-Control" />
			</div>

			<div class="form-group">
				<label for="manufacturer">Fabricante:</label>
				<form:input path="productManufacturer" id="manufacturer"
					class="form-Control" />
			</div>
			
			<div class="form-group">
			<label class="control-label" for="productImage">Carregar Imagem...</label>
			<form:input id="productImage" path="productImage" type="file" class="form:input-large" />
			</div>
			
			<br>
			<br>
			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/inventarioProduto"/>"
				class="btn btn-default"> Cancelar </a>


		</form:form>


		<%@include file="/WEB-INF/view/template/footer.jsp"%>