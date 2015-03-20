<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>

<%@ include file="template/header.html" %>
<div class="row">
    
    <div class="span9">
        <h1 class="heading1"><span class="maintext">Access Denied</span><span class="subtext">${msg}</span>
        </h1>

        <div class="clearfix"></div>
        <br>
    </div>

</div>
</div>
</section>
</div>
<%@ include file="template/footer.html" %>
</body>
</html>