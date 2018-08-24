<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Internship Tutor</title>
    <#include "importCss.ftl">
    <!-- PAGE LEVEL SCRIPTS -->
    <link href="/templates/css/header-1.css" rel="stylesheet" type="text/css"/>
    <link href="/templates/css/blue.css" rel="stylesheet" type="text/css" id="color_scheme"/>
    <link href="/templates/css/internshiptutor.css" rel="stylesheet" type="text/css">

</head>

<body class="smoothscroll enable-animation">
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
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
                        <span>Leggi di pi&ugrave;</span>
                    </a>

                </div>
                <!-- /POST ITEM -->
            </div>
        </div>
    </section>
    <!-- /SECTION CENTER -->


    <#include "footer.ftl">
</div>

<#include "importScript.ftl">
</body>
</html>