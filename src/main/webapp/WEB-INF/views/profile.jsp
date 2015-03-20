<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>

<%@ include file="template/header.html" %>
<!-- Header End -->

<div id="maincontainer">
    <section id="product">
        <div class="container">
            <!--  breadcrumb -->
            <ul class="breadcrumb">
                <li>
                    <a href="#">Home</a>
                    <span class="divider">/</span>
                </li>
                <li class="active">My Account</li>
            </ul>
            <div class="row">

                <!-- My Account-->
                <div class="span9">
                    <h1 class="heading1"><span class="maintext">My Accounts</span><span class="subtext">View All your account information</span>
                    </h1>

                    <h3 class="heading3">My Accounts</h3>

                    <div class="myaccountbox">
                        <ul>
                            <li>
                                <a href="#"> Edit your account information</a>
                            </li>
                            <li>
                                <a href="#"> Change your password</a>
                            </li>
                            <li>
                                <a href="#">Modify your address book entries</a>
                            </li>
                            <li>
                                <a href="#">Modify your wish list</a>
                            </li>
                        </ul>
                    </div>
                    <h3 class="heading3">My Orders</h3>

                    <div class="myaccountbox">
                        <ul>
                            <li>
                                <a href="#"> View your order history</a>
                            </li>
                            <li>
                                <a href="#"> Downloads</a>
                            </li>
                            <li>
                                <a href="#">Your Reward Points</a>
                            </li>
                            <li>
                                <a href="#">View your return requests</a>
                            </li>
                            <li>
                                <a href="#">Your Transactions</a>
                            </li>
                        </ul>
                    </div>
                    <h3 class="heading3">Newsletter</h3>

                    <div class="myaccountbox">
                        <ul>
                            <li>
                                <a href="#"> Subscribe</a>
                                <a href="#"> unsubscribe to newsletter</a>
                            </li>
                        </ul>
                    </div>


                </div>

                <!-- Sidebar Start-->
                <aside class="span3">
                    <div class="sidewidt">
                        <h2 class="heading2"><span>Account</span></h2>
                        <ul class="nav nav-list categories">
                            <li>
                                <a href="#"> My Account</a>
                            </li>
                            <li>
                                <a href="#">Edit Account</a>
                            </li>
                            <li>
                                <a href="#">Password</a>
                            </li>
                            <li>
                                <a href="#">Wish List</a>
                            </li>
                            <li><a href="#">Order History</a>
                            </li>
                            <li><a href="#">Downloads</a>
                            </li>
                            <li><a href="#">Returns</a>
                            </li>
                            <li>
                                <a href="#"> Transactions</a>
                            </li>
                            <li>
                                <a href="category.html">Newsletter</a>
                            </li>
                            <li>
                                <a href="category.html">Logout</a>
                            </li>
                        </ul>
                    </div>
                </aside>
                <!-- Sidebar End-->
            </div>
        </div>
    </section>
</div>
<%@ include file="template/footer.html" %>
</body>
</html>