<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container mb15 group-index">
    <div class="row">
        <div class="col-xs-12">
            <div class="title-block">
                <div class="wrap-content">

                    <h3 class="title-group">Sản phẩm mới</h3>

                    <div class="title-group-note">Hàng luôn được cập nhật thường xuyên</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row box-product-lists">
        <c:forEach var="product" items="${allProduct}">
            <div class="col-width-20 col-md-4 col-sm-4 col-xs-6 product-wrapper product-resize mb30">
                <div class="product-information">
                    <div class="product-detail clearfix">
                        <div class="product-image image-resize">
                            <a href="product-detail-view?productId=${product.id}">
                                <picture>
                                    <source media="(max-width: 991px)" srcset="${pageContext.request.contextPath}/resources/image/${product.listImageProductDetail[1].name}" class="img-rounded">
                                    <source media="(min-width: 992px)" srcset="${pageContext.request.contextPath}/resources/image/${product.listImageProductDetail[1].name}"class="img-rounded">
                                    <img src="${pageContext.request.contextPath}/resources/image/${product.listImageProductDetail[1].name}" class="img-rounded"/>
                                </picture>
                            </a>
                            <c:if test="${product.listPromotion[0].discount!=null}"><div class="product-pricesale-percent">-${product.listPromotion[0].discount}%</div></c:if>
                                <div class="product-icon-new countdown_1021468551" style="display: block;">
                                    <svg class="svg-next-icon svg-next-icon-size-36" style="fill:#d80027">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-new-product"></use>
                                    </svg>
                                </div>
                                <!--                        <div class="box-position-quickview">
                                                            <div class="wrap-btn-quickview">
                                                                <a href="javascript:void(0);" class="quickview" data-handle="/products/giay-adidas-superstar-hologram" title="Xem nhanh">Xem nhanh</a>
                                                            </div>
                                                        </div>-->
                            </div>
                            <div class="product-info">
                                <a href="product-detail-view?productId=${product.id}">
                                <h2>${product.name}</h2>
                            </a>
                            <p class="product-vendor">${product.category.name}</p>
                            <p class="product-box-price clearfix flexbox-grid-default">
                                <c:if test="${product.listPromotion.size()>0}">
                                    <span class="price-new flexbox-content text-left"><fmt:formatNumber type = "number" 
                                                      maxFractionDigits = "3" value = "${product.price-(product.price*product.listPromotion[0].discount/100)}" />₫</span>
                                    <span class="price-old flexbox-content text-right"><fmt:formatNumber type = "number" 
                                                      maxFractionDigits = "3" value = "${product.price}" />₫</span>
                                    </c:if>
                                    <c:if test="${product.listPromotion.size()==0}">
                                    <span class="price-new flexbox-content text-left"><fmt:formatNumber type = "number" 
                                                      maxFractionDigits = "3" value = "${product.price}" />₫</span></c:if>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
        </c:forEach>
    </div>
    <div class="row mb30">
        <div class="col-xs-12">
            <div class="text-center">
                <a href="#" class="btn btn-view-more">Xem tất cả</a>
            </div>
        </div>
    </div>
</div>