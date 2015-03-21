<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>

<%@ include file="template/homeheader.html" %>
<script type="application/javascript" scr="jquery-1.11.2.min.js">
    $("#ajaxform").submit(function (e) {
        $.ajax({
            url: '/cart/add/{',
            type: 'POST',
            contentType: 'application/x-www-form-urlencoded',
            data: $(this).serializeArray(),
            dataType: 'json',
            success: function (content) {
                $("#cart").append(content.addToCartLayer);
                $.fancybox({
                    href: '#cart',
                    showCloseButton: false,
                    enableEscapeButton: false,
                    hideOnOverlayClick: false
                });
            },
            error: function (xht, status, ex) {
                console.log("error : " + ex);//JSON.parse: bad escaped character
            }
        });
</script>
<!-- Header End -->
<div id="maincontainer">
    <!-- Slider Start-->
    <section class="slider">
        <div class="container">
            <div class="html_carousel">
                <div id="mainslider3">
                    <c:forEach items="${featuredProductsList}" varStatus="loopStatus" var="product">
                    <div class="item">
                        <div>
                            <a href="#"><img src="${product.imageurl}" alt="" title=""/></a>

                            <div class="text">
                                <h1 class="productname"><span
                                        class="bgnone">Welcome to Buy The Box</span></h1>

                                <p>One stop shop for the best user experience online and offline when it comes to speedy and intact wholesale ordering and delivery of kids and family products</p>

                                <div class="productprice">
                                    <div class="productpageprice">
                                        <span class="spiral"></span>$230.00
                                    </div>
                                    <div class="productpageoldprice">Old price : $345.00</div>
                                    <ul class="rate">
                                        <li class="on"></li>
                                        <li class="on"></li>
                                        <li class="on"></li>
                                        <li class="off"></li>
                                        <li class="off"></li>
                                    </ul>
                                </div>
                                <br>
                                <ul class="productpagecart">
                                    <li><a href="#" class="cart">Add to Cart</a>
                                    </li>
                                    <li><a href="#" class="wish">Add to Wishlist</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <!-- Slider End-->

    <!-- Section Start-->
    <section class="container otherddetails">
        <div class="otherddetailspart">
            <div class="innerclass free">
                <h2>Free shipping</h2>
                All over in world over $200
            </div>
        </div>
        <div class="otherddetailspart">
            <div class="innerclass payment">
                <h2>Easy Payment</h2>
                Payment Gatway support
            </div>
        </div>
        <div class="otherddetailspart">
            <div class="innerclass shipping">
                <h2>24hrs Shipping</h2>
                Free For UK Customers
            </div>
        </div>
        <div class="otherddetailspart">
            <div class="innerclass choice">
                <h2>Over 5000 Choice</h2>
                50,000+ Products
            </div>
        </div>
    </section>
    <!-- Section End-->
    <div class="container">
        <div class="row">
            <!-- Featured Product-->
            <div class="span6">
                <section id="featured" class="row mt40">
                    <h1 class="heading1"><span class="maintext">Featured Products</span></h1>
                    <ul class="thumbnails">
                        <c:forEach items="${productsList.subList(0,4)}" var="product">
                        <li class="span3">
                            <a class="prdocutname" href="/products/viewDetails/${product.id}">${product.name}</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="${product.imgmidsize}"></a>

                                <div class="shortlinks">
                                    <a class="details" href="/products/viewDetails/${product.id}">DETAILS</a>
                                </div>
                                <div class="pricetag">
                                    <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>

                                    <div class="price">
                                        <div class="pricenew">&pound; ${product.salesPrice}</div>
                                        <div class="priceold">&pound; ${product.regularPrice}</div>
                                    </div>
                                </div>
                            </div>
                        </li></c:forEach>
                    </ul>
                </section>
            </div>

            <!-- Latest Product-->
            <div class="span6">
                <section id="latest" class="row mt40">
                    <h1 class="heading1"><span class="maintext">Latest Products</span></h1>
                    <ul class="thumbnails">
                <c:if test="${productsList.size() >= 10}">
                        <c:forEach items="${productsList.subList(0,10)}" begin="1" end="9" step="1" var="i">
                       <c:set var="product" value="${10-i}"/>
                        <li class="span3">
                            <a class="prdocutname" href="product.html">${i.}</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product2a.jpg"></a>

                                <div class="shortlinks">
                                    <a class="details" href="#">DETAILS</a>
                                    <%--<a class="wishlist" href="#">WISHLIST</a>
                                    <a class="compare" href="#">COMPARE</a>--%>
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
                </c:forEach>
                </c:if>
                    </ul>
                </section>
            </div>
        </div>
    </div>

    <!-- Popular Brands Maybe Later-->
</div>
<!-- /maincontainer -->
<%@ include file="template/footer.html" %>
</body>
</html>