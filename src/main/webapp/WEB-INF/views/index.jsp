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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product1a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product1a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <span class="new tooltip-test">New</span>
                                <a href="#"><img alt="" src="img/product1a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product1a.jpg"></a>

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
                </section>
            </div>

            <!-- Latest Product-->
            <div class="span6">
                <section id="latest" class="row mt40">
                    <h1 class="heading1"><span class="maintext">Latest Products</span></h1>
                    <ul class="thumbnails">
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product2a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product2a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <span class="new tooltip-test">New</span>
                                <a href="#"><img alt="" src="img/product2a.jpg"></a>

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
                        <li class="span3">
                            <a class="prdocutname" href="product.html">Product Name Here</a>

                            <div class="thumbnail">
                                <a href="#"><img alt="" src="img/product2a.jpg"></a>

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
                </section>
            </div>
        </div>
    </div>

    <!-- Popular Brands-->
    <section id="popularbrands" class="container mt0">
        <div class="row">
            <div class="span9">
                <h1 class="heading1"><span class="maintext">Popular Brands</span><span class="subtext"> See Our  Popular Brands</span>
                </h1>

                <div class="brandcarousalrelative">
                    <ul id="brandcarousal">
                        <li><img src="img/brand1.jpg" alt="" title=""/></li>
                        <li><img src="img/brand2.jpg" alt="" title=""/></li>
                        <li><img src="img/brand3.jpg" alt="" title=""/></li>
                        <li><img src="img/brand4.jpg" alt="" title=""/></li>
                        <li><img src="img/brand1.jpg" alt="" title=""/></li>
                        <li><img src="img/brand2.jpg" alt="" title=""/></li>
                        <li><img src="img/brand3.jpg" alt="" title=""/></li>
                        <li><img src="img/brand4.jpg" alt="" title=""/></li>
                        <li><img src="img/brand1.jpg" alt="" title=""/></li>
                        <li><img src="img/brand2.jpg" alt="" title=""/></li>
                        <li><img src="img/brand3.jpg" alt="" title=""/></li>
                        <li><img src="img/brand4.jpg" alt="" title=""/></li>
                    </ul>
                    <div class="clearfix"></div>
                    <a id="prev" class="prev" href="#">&lt;</a>
                    <a id="next" class="next" href="#">&gt;</a>
                </div>
            </div>
            <div class="span3">
                <div class="sidewidt">
                    <h1 class="heading1"><span class="maintext">Testimonials</span></h1>

                    <div class="flexslider" id="testimonialsidebar">
                        <ul class="slides">
                            <li>
                                " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                                has been the industry's standard dummy text ever since the 1500s."<br>
                                <span class="pull-right orange">By : Themeforest</span>
                            </li>
                            <li>
                                " It was popularised in the 1960s with the release of Letraset sheets containing Lorem
                                Ipsum passages, and more recently ."<br>
                                <span class="pull-right orange">By : Envato</span>
                            </li>
                            <li>
                                " Lorem Ipsum is simply dummy text of the printing and industry. Lorem has been the
                                industry's standard dummy text ever since the 1500s."<br>
                                <span class="pull-right orange">By : Themeforest</span>
                            </li>
                            <li>
                                " It was popularised in the 1960s with the release of Letraset sheets containing Lorem
                                Ipsum passages, and more recently."<br>
                                <span class="pull-right orange">By : Envato</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /maincontainer -->
<%@ include file="template/footer.html" %>
</body>
</html>