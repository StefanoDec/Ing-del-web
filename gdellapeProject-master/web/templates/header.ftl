<body class="smoothscroll enable-animation">

<!-- wrapper -->
<div id="wrapper">
    <div id="header" class="navbar-toggleable-md  shadow-after-3 clearfix position-fixed">
        <!-- TOP BAR-->
        <div id="topBar" class="dark sticky">
            <div class="container">

                <!-- right -->
                <ul class="top-links list-inline float-right has-topBar">
                    //lo faccio appariere se è loggato
                    <li>
                        <a class="dropdown-toggle no-text-underline" data-toggle="dropdown" href="#"><i
                                class="fa fa-user hidden-xs-down"></i> IL MIO ACCOUNT </a>
                        <ul class="dropdown-menu float-right has-topBar">
                            <li><a tabindex="-1" href="#"><i class="fa fa-history"></i> I MIEI
                                TIROCINI</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="#"><i class="fa fa-cog"></i> IMPOSTAZIONI
                                DELL'ACCOUNT </a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="#"><i class="glyphicon glyphicon-off"></i> logout
                            </a></li>
                        </ul>
                    </li>
                    //fine
                    <li class="hidden-xs-down"><a href="#">LOGIN</a></li>
                   //la registrazione la possiamo far sparire quando uno si logga
                    <li class="hidden-xs-down"><a href="registrazione.html">REGISTRAZIONE</a></li>
                </ul>

                <!-- left -->
                <ul class="top-links list-inline has-topBar">
                    <li class="text-welcome hidden-xs-down p-10">Benvenuto <strong>${user}<#if user = "mario"> il bravo utente</#if></strong></li>
                    //io ho pensato di togliere il nome con la virgola e rimane solo la scritta benvenuto poi il nome lo facciamo apprarire quando e loggato, si potrebbe aggiungere alla sessione anche il nome utente
                </ul>

            </div>
        </div>
        <!-- /TOP BAR-->


        <header id="topNav">
            <div class="container">
                <!-- Mobile Menu Button -->
                <button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Logo -->
                <a class="logo float-left mb-5 mr-10scripts.jsscripts.js" href="index.html">
                    <img src="/templates/imgs/interns.jpg" alt=""/>
                </a>

                <div class="navbar-collapse collapse nav-main-collapse submenu-dark">
                    <nav class="nav-main">
                        <ul id="topMain" class="nav nav-pills nav-main">
                            <li class="dropdown active">
                                <a class="dropdown-toggle noicon" href="index.html">
                                    HOME
                                </a>
                            </li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle noicon" href="offerte-tutoraggi.html">
                                    LISTA OFFERTE TUTORAGGI
                                </a>
                            </li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle noicon" href="lista-convenzioni.html">
                                    LISTA CONVENZIONI
                                </a>
                            </li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle noicon" href="informazioni.html">
                                    INFORMAZIONI
                                </a>
                            </li>
                            <form class="d-inline-block col-lg-12 col-xl-4 mb-lg-2">
                                <div class="input-group">
                                    <input type="text" class="form-control" aria-label=""
                                           placeholder="Cerca nell'intero del sito">
                                    <span class="input-group-btn">
                                            <button class="btn btn-primary material-ico" type="submit">
                                                <i class="material-icons">search</i>
                                            </button>
                                        </span>
                                </div>
                            </form>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
    </div>
    <img class="img-fluid mt-140" src="/templates/imgs/internship.jpg">