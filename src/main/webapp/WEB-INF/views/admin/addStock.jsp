<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="template/productHeader.html" %>
<body>

<!-- Left side content -->
<%@ include file="template/leftSidebar.html" %>
<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <%@ include file="template/topNav.html" %>
    <!-- Responsive header -->
    <%@ include file="template/responsiveHeader.html" %>
    <!-- Title area -->
    <%@ include file="template/titleArea.html" %>
    <div class="line"></div>
    <!-- Shortcuts -->
    <%@ include file="template/shortcuts.html" %>
    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <form:form id="validate" commandName="productStock" class="form" method="post" action="/admin/addStock">

            <fieldset>
                <div class="widget">
                    <div class="title"><img src="img/icons/dark/alert.png" alt="" class="titleIcon" /><h6>Manage Product stock</h6></div>

                    <div class="formRow">
                        <form:hidden path="productId" value="${product.id}"/>
                        <form:select id="warehouses" path="warehouse.id">
                            <c:forEach items="${warehousesList}" var="warehouse" varStatus="loopStatus">
                            <form:option value="${warehouse.id}" path="warehouse.id" label="${warehouse.location.name}"/>
                            </c:forEach>
                        </form:select>
                    </div>
                        <div class="formRow">
                            <form:label path="stock">Stock Available at ${warehousesList.get(cu).location.name}, (${warehouse.codename})<span class="req">*</span></form:label>

                        <div class="formRight"><form:input path="stock" type="text" class="validate[required]"  name="stock" id="stock"/></div><div class="clear"></div>
                    </div>

                    <div class="formSubmit"><input type="submit" value="submit" class="redB" /></div>
                    <div class="clear"></div>

                </div>
            </fieldset>

        </form:form>



    </div>

    <!-- Footer line -->
    <%@ include file="template/Footer.html" %>

</div>

<div class="clear"></div>

</body>
</html>