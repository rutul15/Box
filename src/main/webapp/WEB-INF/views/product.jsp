<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en" xmlns:form="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>${title} - Buy the Box :: Shopping boxes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300italic,400italic,600,600italic' rel='stylesheet'
          type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Crete+Round' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/flexslider.css" type="text/css" media="screen" rel="stylesheet"/>
    <link href="css/jquery.fancybox.css" rel="stylesheet">
    <link href="css/cloud-zoom.css" rel="stylesheet">

    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>


</head>
<body>
<!-- Header Start -->
<header>
    <div class="headerstrip">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <a href="/" class="logo pull-left"><img src="img/logo.png" alt="Buy The Box"
                                                            title="Buy The Box"></a>
                    <!-- Top Nav Start -->
                    <div class="pull-left">
                        <div class="navbar" id="topnav">
                            <div class="navbar-inner">
                                <ul class="nav">
                                    <li><a class="home active" href="#">Home</a>
                                    </li><security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_USER') OR hasRole('ROLE_EMPLOYEE') OR hasRole('ROLE_DRIVER')">
                                    <li><a class="myaccount" href="#">My Account</a>
                                    </li>
                                    <li><a class="shoppingcart" href="#">Shopping Cart</a>
                                    </li>
                                    <li><a class="checkout" href="#">CheckOut</a>
                                    </li></security:authorize>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Top Nav End -->
                    <div class="pull-right">
                        <form:form  action="/search" commandName="productsearch" method="get" class="form-search top-search">
                            <form:input  path="searchterm" type="text" class="input-medium"></form:input>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="headerdetails">

            <div class="pull-right">
                <ul class="nav topcart pull-left">
                    <li class="dropdown hover carticon ">
                        <a href="#" class="dropdown-toggle"> Shopping Cart <span class="label label-orange font14">1 item(s)</span>
                            - $589.50 <b class="caret"></b></a>
                        <ul class="dropdown-menu topcartopen ">
                            <li>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="image"><a href="product.html"><img width="50" height="50"
                                                                                      src="img/prodcut-40x40.jpg"
                                                                                      alt="product" title="product"></a>
                                        </td>
                                        <td class="name"><a href="product.html">MacBook</a></td>
                                        <td class="quantity">x&nbsp;1</td>
                                        <td class="total">$589.50</td>
                                        <td class="remove"><i class="icon-remove"></i></td>
                                    </tr>
                                    <tr>
                                        <td class="image"><a href="product.html"><img width="50" height="50"
                                                                                      src="img/prodcut-40x40.jpg"
                                                                                      alt="product" title="product"></a>
                                        </td>
                                        <td class="name"><a href="product.html">MacBook</a></td>
                                        <td class="quantity">x&nbsp;1</td>
                                        <td class="total">$589.50</td>
                                        <td class="remove"><i class="icon-remove "></i></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="textright"><b>Sub-Total:</b></td>
                                        <td class="textright">$500.00</td>
                                    </tr>
                                    <tr>
                                        <td class="textright"><b>Eco Tax (-2.00):</b></td>
                                        <td class="textright">$2.00</td>
                                    </tr>
                                    <tr>
                                        <td class="textright"><b>VAT (17.5%):</b></td>
                                        <td class="textright">$87.50</td>
                                    </tr>
                                    <tr>
                                        <td class="textright"><b>Total:</b></td>
                                        <td class="textright">$589.50</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="well pull-right buttonwrap">
                                    <a class="btn btn-orange" href="#">View Cart</a>
                                    <a class="btn btn-orange" href="#">Checkout</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="categorymenu">
            <nav class="subnav">
                <ul class="nav-pills categorymenu">
                    <li><a class="active" href="/">Home</a></li>
                    <li><a href="/products">Products</a></li>
                    <li><a href="#">Box Account</a>
                        <div>
                            <ul>
                                <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_USER') OR hasRole('ROLE_EMPLOYEE') OR hasRole('ROLE_DRIVER')">
                                    <li><a href="/profile">My Account</a>
                                    </li>
                                    <li><a href="/wishlist">Wishlist</a>
                                    </li></security:authorize>
                                <security:authorize access="hasRole('ROLE_ANONYMOUS')">
                                    <li><a href="/login">Login</a>
                                    </li>
                                    <li><a href="/register">Register</a>
                                    </li>
                                </security:authorize>
                            </ul>
                        </div>
                    </li>
                    <li><a href="/contact">Contact</a></li>
                    <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_USER') OR hasRole('ROLE_EMPLOYEE') OR hasRole('ROLE_DRIVER')">
                        <li><a href="/j_spring_security_logout">Logout</a></li>
                    </security:authorize>
                    <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_EMPLOYEE') OR hasRole('ROLE_DRIVER')">
                        <li><a href="/admin/dashboard">Admin</a></li>
                    </security:authorize>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!-- Header End -->

<div id="maincontainer">
    <section id="product">
        <div class="container">
            <!-- Product Details-->
            <div class="row">
                <!-- Left Image-->
                <div class="span5">
                    <ul class="thumbnails mainimage">
                        <li class="span5">
                            <a rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"
                               class="thumbnail cloud-zoom" href="#">
                                <img src="img/product1big.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="span5">
                            <a rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"
                               class="thumbnail cloud-zoom" href="#">
                                <img src="img/product1big.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="span5">
                            <a rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"
                               class="thumbnail cloud-zoom" href="#">
                                <img src="img/product1big.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="span5">
                            <a rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"
                               class="thumbnail cloud-zoom" href="#">
                                <img src="img/product1big.jpg" alt="" title="">
                            </a>
                        </li>
                    </ul>

                    <ul class="thumbnails mainimage">
                        <li class="producthtumb">
                            <a class="thumbnail">
                                <img src="img/product1.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="producthtumb">
                            <a class="thumbnail">
                                <img src="img/product1.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="producthtumb">
                            <a class="thumbnail">
                                <img src="img/product1.jpg" alt="" title="">
                            </a>
                        </li>
                        <li class="producthtumb">
                            <a class="thumbnail">
                                <img src="img/product1.jpg" alt="" title="">
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- Right Details-->
                <div class="span7">
                    <div class="row">
                        <div class="span7">
                            <h1 class="productname"><span class="bgnone">${product.name}</span>
                            </h1>

                            <div class="productprice">
                                <div class="productpageprice">
                                    <span class="spiral"></span>&pound; ${product.salesPrice}
                                </div>
                                <div class="productpageoldprice">Regular price : &pound; ${product.regularPrice}</div>
                                <ul class="rate">
                                    <li class="on"></li>
                                    <li class="on"></li>
                                    <li class="on"></li>
                                    <li class="off"></li>
                                    <li class="off"></li>
                                </ul>
                            </div>
                            <div class="quantitybox">

                                <div class="clear"></div>
                                <div class="control-group">
                                    <div class="controls"><%--
                                        <form:label path="quanity"></form:label>
                                        <form:input path="quanity" name="quamtity"/>--%>


                                    </div>
                                </div>
                            </div>
                            <ul class="productpagecart">
                                <li><a class="cart" href="/cart/add/">Add to Cart</a>
                                </li>
                            </ul>
                            <!-- Product Description tab & comments-->
                            <div class="productdesc">
                                <ul class="nav nav-tabs" id="myTab">
                                    <li class="active"><a href="#description">Description</a>
                                    </li>
                                    <li><a href="#specification">Specification</a>
                                    </li>

                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="description">
                                        ${product.description}
                                    </div>
                                    <div class="tab-pane " id="specification">
                                        <ul class="productinfo">
                                            <li>
                                                <span class="productinfoleft"> Product Weight:</span> ${product.weight}
                                            </li>
                                            <li>
                                                <span class="productinfoleft"> Items/Box</span> ${product.itemsperbox}
                                            </li>

                                            <li>
                                                <span class="productinfoleft"> Total Available: </span> ${totalstock} <i>all warehouses</i>
                                            </li>
                                            <li>
                                                <span class="productinfoleft"> Selling Price: </span> &pound; ${product.salesPrice}
                                            </li>
                                            <li>
                                                <span class="productinfoleft"> Regular Price: </span> &pound; ${product.regularPrice}
                                            </li>

                                            <li>
                                                <span class="productinfoleft"> Product id:</span> ${product.id}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <!--  Related Products-->
  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Related Products</span><span class="subtext"> See Our Most featured Products</span></h1>
      <ul class="thumbnails">
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="#"><img alt="" src="img/product1.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </section>

</div>

<%@ include file="template/footer.html" %>
</body>
</html>