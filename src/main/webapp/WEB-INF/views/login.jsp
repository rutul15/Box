<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>


<%@ include file="template/noMenuHeader.html" %>
<!-- Account Login-->
<div class="row">
    <div class="span12">
        <h1 class="heading1"><span class="maintext">Login</span><span class="subtext">First Login here to View All your account information</span>
        </h1>
        <section class="newcustomer span4">
            <h2 class="heading2">New Customer </h2>

            <div class="loginbox">
                <h4 class="heading4"> Register Account</h4>

                <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep
                    track of the orders you have previously made.</p>
                <br>

                <a href="/register" class="btn btn-orange">Continue</a>
            </div>
        </section>
        <section class="returncustomer span4">
            <h2 class="heading2">Returning Customer </h2>

            <div class="loginbox">
                <h4 class="heading4">I am a returning customer</h4>
                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                    <p class="alert-warning">
                        Your login attempt was not successful due to <br/><br/>
                        <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
                    </p>
                </c:if>

                <form action="<c:url value='/j_spring_security_check' />" class="form-vertical" method="post">
                    <fieldset>
                        <div class="control-group">
                            <label path="usernameLB" class="control-label">Username:</label>

                            <div class="controls">
                                <input name="username" type="text" class="span3"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label path="passwordLB" class="control-label">Password:</label>

                            <div class="controls">
                                <input name="password" type="password" class="span3"/>
                            </div>
                        </div>

                        <input type="submit" class="btn btn-orange"/>
                    </fieldset>
                </form>
            </div>
        </section>
    </div>

    <!-- Sidebar End-->
</div>
</div>
</section>
</div>
<%@ include file="template/footer.html" %>
</body>
</html>