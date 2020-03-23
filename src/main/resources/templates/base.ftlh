<#macro content></#macro>
<#macro title></#macro>

<#macro main>
    <!doctype html>
    <html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <@head/>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href="css/vendor/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="css/vendor/iconfont.min.css">
        <link type="text/css" rel="stylesheet" href="css/vendor/helper.css">
        <link type="text/css" rel="stylesheet" href="css/plugins/plugins.css">
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <script type="text/javascript" src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
    <div id="main-wrapper">
        <header class="header header-transparent header-sticky  d-lg-block d-none">
            <div class="header-deafult-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2 col-md-4 col-12">
                            <!--Logo Area Start-->
                            <div class="logo-area">
                                <a href="index.html"><font color="#f0ffff">Oncology</font></a>
                            </div>
                            <!--Logo Area End-->
                        </div>
                        <div class="col-xl-5 col-lg-6 col-md-4 d-none d-lg-block col-12">
                            <!--Header Menu Area Start-->
                            <div class="header-menu-area text-center">
                                <nav class="main-menu">
                                    <ul>
                                        <li><a href="/posts?category=Новости"><font color="#f0ffff">Новости</font></a></li>
                                        <li><a href="/posts?category=Рак"><font color="#f0ffff">Рак</font></a></li>
                                        <li><a href="/posts?category=Диагностика"><font color="#f0ffff">Диагностика</font></a></li>
                                        <li><a href="/posts?category=Лечение"><font color="#f0ffff">Лечение</font></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!--Header Menu Area End-->
                        </div>
                        <div class="col-xl-2 col-lg-1 col-md-1 col-12 ml-auto">
                            <div class="header-search-cart-area">
                                <ul>
                                    <li><a class="header-search-toggle" href="/users/search"><i
                                                    class="flaticon-magnifying-glass"></i></a></li>
                                    <li class="currency-menu"><a href="#"><i class="flaticon-user"></i></a>
                                        <ul class="currency-dropdown">
                                            <li><a href="my-account.html">My account</a>
                                                <ul>
                                                    <#if User??>
                                                        <li>${User.getName()}</li>
                                                        <li><a href="/profile">Profile</a></li>
                                                    <#else>
                                                        <li><a href="/login">Login</a></li>
                                                        <li><a href="/registration">Registration</a></li>
                                                    </#if>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <@content/>

        <footer class="footer-section section bg-gray navbar fixed-bottom">
            <div class="footer-top section" style="height: 70px">
                <div class="container">
                    <div class="row">
                        <div class=" col-xl-6 col-lg-3 col-md-6 col-sm-6 col-12 mb-200 mb-xs-10">
                            <h4 class="title">Information</h4>
                            <ul class="ft-menu">
                                <li><a href="#">About Us</a></li>
                            </ul>
                        </div>
                        <div class=" text-lg-right text-left col-xl-3 col-lg-3 col-md-6 col-sm-6 col-12 mb-40 mb-xs-60">
                            <h4>Volzhsk, lalaland</h4>
                            <font>Designed by Syumbel</font>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    <script type="text/javascript" src="js/vendor/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/vendor/popper.min.js"></script>
    <script type="text/javascript" src="js/vendor/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/plugins/plugins.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    </body>
    </html>
</#macro>