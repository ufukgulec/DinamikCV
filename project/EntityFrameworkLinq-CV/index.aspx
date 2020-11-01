<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EntityFrameworkLinq_CV.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Entity CV Projesi</title>
    <link rel="icon" type="image/x-icon" href="web/assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="web/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">Clarence Taylor</span>
            <span class="d-none d-lg-block">
                <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="web/assets/img/profile.jpg" alt="profil" /></span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Deneyimlerim</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Becerilerim</a></li>
            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- About-->
        <section class="resume-section" id="about">
            <div class="resume-section-content">

                <asp:Repeater ID="RepeaterAbout" runat="server">
                    <ItemTemplate>
                        <h1 class="mb-0">
                            <%#Eval("ad") %>
                            <span class="text-primary">
                                <%#Eval("soyad") %>
                            </span>
                        </h1>
                        <div class="subheading mb-5">
                            <%#Eval("adres") %>
                    ·
                    <%#Eval("tel") %>
                    ·
                       
                    <a href="mailto:name@email.com">
                        <%#Eval("eposta") %>
                    </a>
                        </div>
                        <p class="lead mb-5">
                            <%#Eval("hakkimdaYazi") %>
                        </p>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="social-icons">
                    <a class="social-icon" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="social-icon" href="#"><i class="fab fa-github"></i></a>
                    <a class="social-icon" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="social-icon" href="#"><i class="fab fa-facebook-f"></i></a>
                </div>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Experience-->
        <section class="resume-section" id="experience">
            <div class="resume-section-content">
                <h2 class="mb-5">Deneyimlerim</h2>

                <asp:DataList ID="DataListDeneyimler" runat="server">
                    <ItemTemplate>
                        <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                            <div class="flex-grow-1">
                                <h3 class="mb-0"><%#Eval("deneyim1") %></h3>
                                <div class="subheading mb-3">Deneyim id: <%#Eval("id") %></div>
                                <p><%#Eval("aciklama") %></p>
                            </div>
                            <div class="flex-shrink-0"><i class="fas fa-laptop-code"></i></div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Skills-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">Becerilerim</h2>
                <div class="subheading mb-3">Programlama Dilleri & Araçlar</div>
                <asp:DataList ID="DataListYetenek" runat="server" CssClass="w-50">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col" style="text-align:right">
                                <li class="list-inline-item font-weight-bold"><%#Eval("YetenekAd") %></li>
                            </div>
                            <div class="col">
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                                        aria-valuemin="0" aria-valuemax="100" style="width: <%#Eval("derece")%>%">
                                        <%#Eval("derece") %>%
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <ul class="list-inline dev-icons">
                    <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                    <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                    <li class="list-inline-item"><i class="fab fa-java"></i></li>
                    <li class="list-inline-item"><i class="fas fa-database"></i></li>
                    <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                    <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                    <li class="list-inline-item"><i class="fab fa-less"></i></li>
                    <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                    <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                    <li class="list-inline-item"><i class="fab fa-grunt"></i></li>
                    <li class="list-inline-item"><i class="fab fa-npm"></i></li>
                </ul>
                <footer class="modal-footer">
                    <a href="becerilerPanel.aspx" style="text-decoration:none" class="text text-decoration-none">ASP.NET projesidir. Bootstrap kullanılmıştır. Linq & Entity</a> 
                </footer>
            </div>
        </section>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <!-- Third party plugin JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <!-- Core theme JS-->
    <script src="web/js/scripts.js"></script>
</body>
</html>
