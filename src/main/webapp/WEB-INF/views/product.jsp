<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page session="true" %>

<%@ include file="template/specialHeader.jsp" %>

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
                            <c:url var="cart" value="/cart/add/"></c:url>
                            <form action="${cart}" method="post">
                            <div class="quantitybox">

                                <div class="clear"></div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label>Quantity</label>
                                        <input type="text" id="quantity" name="quantity" value="1"/>
                                        <input type="hidden" value="${product.id }" id="productId" name="productId"/>

                                    </div>
                                </div>
                            </div>
                            <ul class="productpagecart">
                            	
                            	
                                <li>
                                <input type="submit" class="cart btn btn-primary" name="submit" value="Add to Cart">
                                
                                </li>
                            </ul>
                            </form>
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
<div id="msg">Item added successfully !!</div>

<script>
    function cap(para1, para2){
        
    	
    	/* $.ajax({
            url: '${pageContext.request.contextPath}/cart/add/',
            type: 'POST',
            contentType: 'application/x-www-form-urlencoded',
            data: {'quantity' : para1, 'productId' : para2},
            dataType: 'json',
            success: function (content) {
            	
            	console.log("Data: "+ content);
                $("#currentcart").html("test1111");
                $.fancybox({
                    href: '#msg',
                    showCloseButton: false,
                    enableEscapeButton: false,
                    hideOnOverlayClick: false
                });
            },
            error: function (xht, status, ex) {
                console.log("error : " + ex);//JSON.parse: bad escaped character
            }
        }); */
    	
    }

    $(function(){
        $('.addcart').click(function(){
            var $this = $(this);
            var p1 = $('#quantity').val();
            var p2 = $('#productId').val();
            cap(p1, p2);
        });
    });
    
    
    
    

</script>

</body>
</html>