<%@page import="model.administrator.Administrator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.customer.Customer"%>

<!DOCTYPE html>
<html lang="pt_br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="third_party/bootstrap-4.5.1/css/bootstrap.css">
        <link rel="stylesheet" href="third_party/fontawesome-5.14.0/css/fontawesome.css">
        <link rel="stylesheet" href="third_party/fontawesome-5.14.0/css/regular.css">
        <link rel="stylesheet" href="third_party/fontawesome-5.14.0/css/all.css">

        <script type="text/javascript" src="../third_party/bootstrap-4.5.1/js/bootstrap.js"></script>

        <title> NomeLoja | Sua loja favorita </title>
    </head>
    <body>
        <header>
            <div class="container-fluid">
                <div class="main-header row justify-content-sm-center">
                    <div class="logo col col-sm-2"><a href="index.jsp"><img src="img/logo.png" class="img-fluid" alt="NomeLoja"></a></div>
                    <div class="search-input col col-sm-7">
                        <form action="" class="">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control mr-sm-2" placeholder="Buscar" aria-label="Buscar" aria-describedby="input-search">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="submit"><i class="fas fa-search"></i></button>
                                </div>
                            </div> 
                        </form>
                    </div>
                    <div class="user-links col col-sm-3 row">
                        <%
                            String fullname = "";
                            if (session.getAttribute("user") instanceof Customer) {
                                Customer customer = (Customer) session.getAttribute("user");
                                fullname = customer.getName();
                                String username[] = fullname.split(" ");
                                
                                out.print("<span class='col col-sm-auto welcome-msg'>Bem vindo " + username[0] + "</span>");
                                out.print("<div class='col col-sm-1'><a href='perfil_cliente.jsp'><i class='fas fa-user'></i></a></div>");
                                out.print("<div class='col col-sm-1'><a href='sacola.jsp'><i class='fas fa-shopping-bag'></i></a></div>");
                                out.print("<div class='col col-sm-1'><a href='logout'><i class='fas fa-sign-out-alt'></i></a></div>");

                            } else if (session.getAttribute("user") instanceof Administrator) {
                                Administrator administrator = (Administrator) session.getAttribute("user");
                                fullname = administrator.getName();
                                String username[] = fullname.split(" ");
                                
                                out.print("<span class='col col-sm-auto welcome-msg'>Bem vindo " + username[0] + "</span>");
                                out.print("<div class='col col-sm-1'><a href='perfil_adm.jsp'><i class='fas fa-user'></i></a></div>");
                                out.print("<div class='col col-sm-1'><a href='logoutadm'><i class='fas fa-sign-out-alt'></i></a></div>");
                            } else {
                                out.print("<span class='col col-sm-9 welcome-msg'></span>");
                                out.print("<div class='col col-sm-1'><a href='login.jsp'><i class='fas fa-user'></i></a></div>");
                                out.print("<div class='col col-sm-1'><a href='sacola.jsp'><i class='fas fa-shopping-bag'></i></a></div>");
                            }
                        %>
                    </div>
                </div>
                <div class="category-menu container">
                    <div class="row">
                        <div class="col col-sm"><a href="http://">Novidades</a></div>
                        <div class="col col-sm"><a href="http://">Conforto</a></div>
                        <div class="col col-sm"><a href="http://">Feminino</a></div>
                        <div class="col col-sm"><a href="http://">Masculino</a></div>
                        <div class="col col-sm"><a href="http://">Infantil</a></div>
                        <div class="col col-sm"><a href="http://">Bolsas e Acessórios</a></div>
                        <div class="col col-sm"><a href="http://">Calçados</a></div>
                        <div class="col col-sm"><a href="http://">Esportivo</a></div>
                        <div class="col col-sm"><a href="http://">Moda Íntima</a></div>
                        <div class="col col-sm"><a href="http://">Ofertas</a></div>
                    </div>   
                </div>
            </div>
        </header>

        <div class="container-fluid main-body">
            <div id="carouselExampleControls" class="carousel slide banner" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100 img-fluid" src="img/banner.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 img-fluid" src="img/banner.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100 img-fluid" src="img/banner.png" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="main-products container">
                <span class="title-home-page">Alguns dos nossos produtos</span>

                <div class="row">
                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 1</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>

                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 2</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>

                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 3</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="row">
                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 4</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>

                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 5</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>

                    <div class="col col-sm main-product">
                        <a href="http://">
                            <img src="img/produto.png" alt="">
                            <div class="main-product-info">
                                <span class="main-product-name">Produto 6</span>
                                <span class="main-product-price">R$ 25,80</span>
                            </div>
                        </a>
                    </div>
                </div>

            </div>
        </div>

        <footer>
            <div class="container">
                <div class="row justify-content-sm-center">
                    <div class="col col-sm help">
                        <div class="row help-intern">
                            <div class="col col-sm">
                                <a href="http://">
                                    <i class="fas fa-store"></i>
                                    <span>Retire na Loja</span>
                                </a>
                            </div>
                            <div class="col col-sm">
                                <a href="http://">
                                    <i class="fas fa-credit-card"></i>
                                    <span>Pague Online</span>
                                </a>
                            </div>

                            <div class="w-100"></div>

                            <div class="col col-sm">
                                <a href="http://">
                                    <i class="fas fa-boxes"></i>
                                    <span>Entrega Expressa</span>
                                </a>
                            </div>
                            <div class="col col-sm">
                                <a href="http://">
                                    <i class="fas fa-comments"></i>
                                    <span>Fale Conosco</span>
                                </a>
                            </div>  
                        </div>


                    </div>
                    <div class="col col-sm about-us">
                        <span>Sobre Nós</span>
                        <ul>
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                            <li><a href="">Link 5</a></li>
                            <li><a href="">Link 6</a></li>

                        </ul>
                    </div>
                    <div class="col col-sm frequently-questions">
                        <span>Perguntas Frequentes</span>
                        <ul>
                            <li><a href="">Link 1</a></li>
                            <li><a href="">Link 2</a></li>
                            <li><a href="">Link 3</a></li>
                            <li><a href="">Link 4</a></li>
                            <li><a href="">Link 5</a></li>
                            <li><a href="">Link 6</a></li>

                        </ul>
                    </div>
                    <div class="col col-sm social-networks">
                        <span>Nos siga nas redes sociais</span>
                        <div class="row">
                            <div class="col col-sm"><a href=""><i class="fab fa-facebook-square"></i></a></div>
                            <div class="col col-sm"><a href=""><i class="fab fa-instagram"></i></a></div>
                            <div class="col col-sm"><a href=""><i class="fab fa-twitter"></i></a></div>
                            <div class="col col-sm"><a href=""><i class="fab fa-youtube"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>