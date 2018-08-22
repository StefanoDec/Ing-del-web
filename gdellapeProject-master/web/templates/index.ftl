<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Internship Tutor</title>

    <!-- PAGE LEVEL SCRIPTS -->
    <link href="/templates/css/header-1.css" rel="stylesheet" type="text/css"/>
    <link href="/templates/css/blue.css" rel="stylesheet" type="text/css" id="color_scheme"/>
    <link href="/templates/css/internshiptutor.css" rel="stylesheet" type="text/css">
    <#include "importCss.ftl">
</head>


<div id="wrapper">
    <#include "header.ftl">
<img class="img-fluid mt-140" src="/templates/imgs/internship.jpg">


    <!-- SECTION HEADER TITLE-->
    <section>
        <div class="container">

            <div class="text-center">
                <h1>Benvenuti su <span>Internship Tutor</span>.</h1>
                <h2 class="col-sm-10 offset-sm-1 mb-0 fw-400">Internship Tutor rappresenta un sistema web per la
                    gestione dell'iter completo dei tirocini universitari.</h2>
            </div>

        </div>
    </section>
    <!-- /SECTION HEADER TITLE-->

    <!-- SECTION CENTER -->
    <section class="section-sm centrale border-top-section">
        <div class="container">
            <h2 class="mb-0">Ultime offerte di tirocinio pubblicate</h2>
            <div class="linea-divisione mt-15 mb-25"></div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <#assign count = 0>
                <#list OfferteTirocini as OffertaTirocinio>

                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase"> ${OffertaTirocinio.Titolo?html}</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>

                                <#--o il periodo di inizio o la data di publicazione-->

                                <span class="font-lato">${OffertaTirocinio.PeriodoInizio?html}</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">${OffertaTirocinio.AziendaOspitante?html}</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">${OffertaTirocinio.DescrizioneBreve?html}</p>

                    <a href="/tirocinio?nome=20" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                    <#assign count = count + 1>
                    <#if count = 2>
                        </div>
                        <div class="row justify-content-between mb-lg-5">
                        <#assign count = 0>
                    </#if>
                </#list>


                <!-- /POST ITEM -->
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Tirocini e stage retributi presso la Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce, offre stage o tirocini retribuiti su tematiche relative a motori DB, framework di
                        sviluppo Java e Angular, e IDE (ad esempio Eclipse)...
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Tirocini e stage retributi presso la Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce, offre stage o tirocini retribuiti su tematiche relative a motori DB, framework di
                        sviluppo Java e Angular, e IDE (ad esempio Eclipse)...
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Tirocini e stage retributi presso la Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce, offre stage o tirocini retribuiti su tematiche relative a motori DB, framework di
                        sviluppo Java e Angular, e IDE (ad esempio Eclipse)...
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Tirocini e stage retributi presso la Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce, offre stage o tirocini retribuiti su tematiche relative a motori DB, framework di
                        sviluppo Java e Angular, e IDE (ad esempio Eclipse)...
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>


            <h2 class="mb-0 mt-25">Ultime Convenzioni</h2>
            <div class="linea-divisione mt-15 mb-25"></div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <#assign count1 = 0>
                <#list Convenzioni as Convenzione>
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">${Convenzioni.Titolo?html} Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                </#list>
                <!-- /POST ITEM -->

                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->

            </div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase"> Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->

                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase">Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>
            <div class="row justify-content-between mb-lg-5">
                <!-- POST ITEM -->
                <div class="col-lg-5 radius-5 box-white border p-15">

                    <h4><a href="#" class="uppercase"> Gunpowder S.r.l. (Spinoff
                        Univ.
                        L&apos;Aquila)</a></h4>

                    <ul class="text-job list-inline mb-5">
                        <li>
                            <a href="#">
                                <i class="fa fa-clock-o"></i>
                                <span class="font-lato">30/01/2018</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span class="font-lato">La Gunpowder S.r.l</span>
                            </a>
                        </li>
                    </ul>

                    <p class="fs-13 mb-10">La Gunpowder S.r.l., spinoff dell&rsquo;Universit&agrave; dell&rsquo;Aquila e
                        registered partner
                        Salesforce
                    </p>

                    <a href="#" class="btn btn-reveal btn-default b-0 btn-shadow-1">
                        <i class="fa fa-plus"></i>
                        <span>Leggi di più</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>
        </div>
    </section>
    <!-- /SECTION CENTER -->


    <!-- /FOOTER-->
    <footer id="footer">
        <div class="container">

            <div class="row">

                <div class="col-md-3">
                    <div class="row">
                        <div class="col-4">
                            <!-- Footer Logo -->
                            <img class="footer-logo" src="http://www.disim.univaq.it/didattica/img/logo_univaq.png"
                                 alt=""/>
                        </div>
                        <div class="col-6 text-left py-5p">

                            <!-- Short Description -->
                            <a href="http://univaq.it">Università degli Studi dell'Aquila</a>
                        </div>
                    </div>
                    <!-- Contact Address -->
                    <address>
                        <ul class="list-unstyled">
                            <li class="footer-sprite address">
                                67100 L'Aquila, Coppito, Via Vetoio<br>
                            </li>
                            <li class="footer-sprite phone">
                                Phone: +39 0862 433002
                            </li>
                            <li class="footer-sprite phone">
                                Phone: +39 0862 433180 (fax)
                            </li>
                            <li class="footer-sprite email">
                                <a href="mailto:disim.sad@univaq.it">disim.sad@univaq.it</a>
                            </li>
                        </ul>
                    </address>
                    <!-- /Contact Address -->

                </div>


                <div class="col-md-4">

                    <!-- Newsletter Form -->
                    <h4 class="letter-spacing-1">INTERNSHIP TUTOR</h4>
                    <p>Internship Tutor rappresenta un sistema web per la gestione dell'iter completo dei tirocini
                        universitari del degli Studi dell'Aquila.</p>
                </div>


                <div class="col-md-3">

                    <!-- Latest Blog Posts -->
                    <h4 class="letter-spacing-1">ULTIME OFFERTE PUBLICATE</h4>
                    <ul class="footer-posts list-unstyled">
                        <li>
                            <a href="#">L'azienda PACARO srl, sede di Borgorose (RI), ricerca tirocinanti</a>
                            <small>29 June 2017</small>
                        </li>
                        <li>
                            <a href="#">Tirocini e stage retributi presso la Gunpowder S.r.l. (Spinoff Univ.
                                L'Aquila)</a>
                            <small>29 June 2017</small>
                        </li>
                        <li>
                            <a href="#">Tirocinio presso Aveja</a>
                            <small>29 June 2017</small>
                        </li>
                    </ul>
                    <!-- /Latest Blog Posts -->

                </div>

                <div class="col-md-2">

                    <!-- Links -->
                    <h4 class="letter-spacing-1">LINK UTILI</h4>
                    <ul class="footer-links list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Lista Offerte Tuttoraggi</a></li>
                        <li><a href="#">Lista Convenzioni</a></li>
                        <li><a href="#">Contattaci</a></li>
                        <li><a href="#">Il Mio Accout</a></li>
                        <li><a href="#">I Miei Tirocini</a></li>

                    </ul>
                    <!-- /Links -->

                </div>


            </div>

        </div>

        <div class="copyright">
            <div class="container">
                <ul class="float-right m-0 list-inline mobile-block">
                    <li><a href="#">Terms & Conditions</a></li>
                    <li>&bull;</li>
                    <li><a href="#">Privacy</a></li>
                </ul>
                &copy; All Rights Reserved, INTERNSHIP TUTOR
            </div>
        </div>
    </footer>
    <!-- /FOOTER -->
</div>

<#include "importScript.ftl">
</html>