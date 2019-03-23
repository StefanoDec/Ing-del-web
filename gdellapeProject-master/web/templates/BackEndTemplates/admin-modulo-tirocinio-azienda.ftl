<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gestione Moduli</title>

    <!-- mobile settings -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0"/>
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- WEB FONTS : use %7C instead of | (pipe) -->
    <link href="https://fonts.googleapis.com/css?family=Material+Icons%7COpen+Sans:300,400,600%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700"
          rel="stylesheet" type="text/css"/>

    <!-- CORE CSS -->
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- THEME CSS -->
    <link href="css/essentials.css" rel="stylesheet" type="text/css"/>
    <link href="css/layout.css" rel="stylesheet" type="text/css"/>

    <!-- PAGE LEVEL SCRIPTS -->
    <link href="css/header-1.css" rel="stylesheet" type="text/css"/>
    <link href="css/blue.css" rel="stylesheet" type="text/css" id="color_scheme"/>
    <link href="css/internshiptutor.css" rel="stylesheet" type="text/css">

    <!-- Page Sript -->
    <link href="css/admin.css" rel="stylesheet" type="text/css"/>
    <!-- /Page Script -->

    <!-- CSS DATATABLES -->
    <link href="css/layout-datatables.css" rel="stylesheet" type="text/css"/>
    <!--CSS no print -->
    <link href="/css/print.css" rel="stylesheet" type="text/css" media="print">

</head>
<body class="smoothscroll enable-animation">

<#--TODO metti a posto la stampa senno si vede male-->

<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse navbar-large bg-dark d-print-none">
    <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse"
            data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand link-bar" href="index.html">Intership Tutor </a>
    <ol class="breadcrumb">
        <li class=""><a href="admin.html">HOME DASHBOARD</a></li>
        <li class="active"><a href="gestione-moduli-admin.html"><b>GESTIONE MODULO: ${azienda.ragioneSociale}</b></a></li>
    </ol>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <div class="row">
                <a class="nav-link link-bar mt-5" href="#">Benvenuto, <b>ADMIN</b></a>
                <a class="nav-link link-bar text-center" href="#"><i class="fa fa-user-md fs-35 px-3"></i></a>
            </div>
        </li>
    </ul>

</nav>
<div class="container-fluid d-print-none">
    <div class="row d-print-none">
        <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar bg-light d-print-none">
            <div class="side-nav mb-60">
                <ul class="list-group list-group-bordered list-group-noicon uppercase">
                    <li class=""><a href="admin.html">HOME DASHBOARD</a></li>
                    <li class=""><a href="gestione-utenza-admin.html">GESTIONE UTENZA</a></li>
                    <li class=""><a href="gestione-richieste-convenzioni-admin.html">GESTIONE RICHIESTE CONVENZIONE</a>
                    </li>
                    <li class="list-group-item">
                        <a class="dropdown-toggle" href="gestione-tirocinii-admin.html">GESTIONE TIROCINII</a>
                        <ul>
                            <li><a href="ultime-offerte-pubblicate-admin.html">ULTIME OFFERTE PUBBLICATE</a></li>
                            <li class=""><a href="offerte-scadute-admin.html">OFFERTE SCADUTE</a></li>
                            <li class=""><a href="tutte-offerte-pubblicate-admin.html">TUTTE LE OFFERTE PUBBLICATE</a>
                            </li>
                        </ul>
                    </li>
                    <li class="list-group-item active">
                        <a class="dropdown-toggle" href="gestione-moduli-admin.html">GESTIONE MODULI</a>
                        <ul>
                            <li><a href="richieste-tirocinii-tirocinanti-admin.html">RICHIESTE TIROCINII TIROCINANTI</a>
                            </li>
                            <li><a href="richieste-convenzioni-aziendali-admmin.html">RICHIESTE CONVENZIONI
                                    AZIENDALI</a>
                            </li>
                            <li><a href="modulo-tirocinio-fine-admin.html">MODULO TIROCINIO FINE</a>
                            </li>
                        </ul>
                    </li>

                    <li class=""><a href="impostazione-account-admin.html">IMPOSTAZIONI ACCOUNT</a></li>
                    </li>
                </ul>
            </div>
        </nav>


        <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3 d-print-none">

            <section class="section-sm centrale border-top-section pl-20 pr-20">
                <div class="container">
                    <form id="modulo_tirocinante" action="print.php" method="post" class="m-0" d>
                        <fieldset>
                            <h1 class="text-center fw-100 d-print-none">Controlla i dati del modulo pre-compilato e clicca su stampa</h1>

                            <div class="text-center d-none d-print-block">
                                <img class="img-fluid" src="imgs/stemma_univaq.png" width="80">
                                <h1 class="Taviraji fw-600 uppercase mb-0">UNIVERSITA&apos; DEGLI STUDI DELL&apos;AQUILA</h1>
                                <h4 class="">Dipartimento di INGEGNERIA E SCIENZE DELL&rsquo;INFORMAZIONE E MATEMATICA</h4>
                                <h6>SEGRETERIA AMMINISTRATIVA PER LA DIDATTICA</h6>
                            </div>
                            <h6>(da compilare a cura dell'Azienda)</h6>
                            <div class="row mb-0 mr-10 ">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">Ente/Azienda </h4>
                                <input class="input-modulo col col-sm pl-0" type="text" name="NominativoEnte"
                                       value="${dato[0]}" placeholder="Nome Ente/Azienda" disabled>
                            </div>

                            <div class="row mb-25 mr-10 mt-15">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20 fw-400">Codice fiscale Ente/Azienda </h4>
                                <input class="input-modulo col col-sm pl-0" type="text" name="Codice_fiscale"
                                       value="${dato[1]}" placeholder="Codice fiscale" disabled>
                            </div>

                            <h3 class="col-auto col-sm-auto pl-0 mb-10">Tirocinante: </h3>

                            <div class="row mb-5 mr-10">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20 mb-0">Cognome:</h4>
                                <input class="input-modulo col col-sm-12 col-md pl-0 mb-0" type="text"
                                       name="Cognome_tirocinante" value="${dato[2]}" disabled  >
                                <h4 class="col-auto col-sm-auto pr-10 fs-20 mb-0">Nome</h4>
                                <input class="input-modulo col col-sm-12 col-md pl-0 mb-0" type="text" name="Nome_tirocinante"
                                       value="${dato[3]}" disabled>
                            </div>


                            <h4 class="col-auto col-sm-auto mb-10 pl-0 fs-20 fw-400">(Codice identificativo tirocinio: Dipartimento, Corso di Laurea o diploma, anno, n progressivo, altro)</h4>
                            <input class="input-modulo col-auto col-sm-auto pl-0 mr-20 mt-0 mb-25" type="text" name="Codice_tirocinio"
                                   value="${dato[4]}">

                            <h3 class="col-auto col-sm-auto pr-10 pl-0 mt-45 mb-10">Periodo del Tirocinio: </h3>

                            <div class="row mb-0 mr-10">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">Dal</h4>
                                <input class="input-modulo col col-sm pl-0" type="date" name="Data_inizio"
                                       value="${dato[5]?date?string("yyyy-MM-dd")}" disabled>
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">al</h4>
                                <input class="input-modulo col col-sm pl-0" type="date" name="Data_fine"
                                       value="${dato[6]?date?string("yyyy-MM-dd")}" disabled>
                            </div>

                            <div class="row mb-0 mr-10 mt-15">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20 fw-400">Per un totale di </h4>
                                <input class="input-modulo col-1 pl-0 text-center" type="number" name="Ore_totali"
                                       value="${dato[7]}" disabled>
                                <h4 class="col-auto col-sm-auto pr-10 fs-20  fw-400"> ore</h4>
                            </div>

                            <div class="row mb-0 mr-10">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">Sede di svolgimento del tirocinio</h4>
                                <input class="input-modulo col col-sm pl-0" type="text" name="Sede_svolgimento"
                                       value="${dato[8]}" disabled>
                            </div>

                            <h4 class="fs-20 mb-0">Descrizione attivita svolta:</h4>
                            <textarea class="textarea-modulo col-12 pt-5 mb-15 mr-10" rows="4" cols="1" name="Descrizione_attivita_svolta" disabled>${dato[9]}</textarea>

                            <div class="row mb-0 mr-10">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">Si attesta che il/la Sig </h4>
                                <input class="input-modulo col col-sm pl-0" type="text" name="Nome_cognome_tirocinante"
                                       value="${dato[3]} ${dato[2]}" disabled>
                            </div>

                            <h4 class="fs-20 mb-0">Ha effettuato i compiti affidatigli conseguendo il seguente risultato :</h4>
                            <textarea class="textarea-modulo col-12 pt-5 mb-0 mr-10" rows="4" cols="1" name="risultato_tirocinio" disabled > ${dato[10]}</textarea>

                            <div class="row mb-25 mr-10">
                                <h4 class="col-auto col-sm-auto pr-10 fs-20">Data</h4>
                                <input class="input-modulo col-2 col-sm-2 pl-0 text-center" type="date" name="Data_documento"
                                       value="${dato[11]?date?string("yyyy-MM-dd")}" disabled>
                            </div>

                            <h4 class="d-none d-print-block">Firma del Tutor aziendale</h4>

                            <div class="linea col-5 p-0 mt-25"></div>

                            <footer class="mt-50 d-print-none">
                            </footer>
                        </fieldset>
                    </form>
                </div>
            </section>

        </main>
    </div>
</div>

<!-- JAVASCRIPT FILES -->
<script>var plugin_path = 'plugins/';</script>
<script src="plugins/jquery/jquery-3.3.1.min.js"></script>
<script src="js/scripts.js"></script>
<script src="plugins/bootstrap/js/bootstrap.js"></script>


<!-- Script page -->
<script src="plugins/datatables/js/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/js/dataTables.tableTools.min.js"></script>
<script src="plugins/datatables/js/dataTables.colReorder.min.js"></script>
<script src="plugins/datatables/js/dataTables.scroller.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.js"></script>
<script src="plugins/select2/js/select2.full.min.js"></script>
<script>
    // datatable_ric_convenzioni
    // datatable_fine_tirocinio
    function initTableRicTiro() {

        var table = jQuery('#datatable_ric_tiro');

        var oTable = table.dataTable({
            "columns": [{
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": true
            }, {
                "orderable": false
            }],
            "order": [
                [14, 'asc'],
            ],
            "lengthMenu": [
                [5, 10, 20, -1],
                [5, 10, 20, "Tutti"] // change per page values here
            ],
            "language": {
                "search": "Filtra i record:",
                "emptyTable": "Nessun dato disponibile nella tabella",
                "zeroRecords": "Nessuna corrispondenza trovata",
                "info": "Mostra da _START_ a _END_ di _TOTAL_ voci",
                "infoEmpty": "Nessuna voce da mostrare",
                "infoFiltered": " (filtrato da _MAX_ voci totali)"
            },
            "pageLength": 5, // set the initial value,
            "columnDefs": [{  // set default column settings
                'orderable': true,
                'targets': [0]
            }, {
                "searchable": true,
                "targets": [0]
            }],
        });

        var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

        var tableWrapper = jQuery('#datatable_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown
    }

    function initTableRicConvenzioni() {

        var table = jQuery('#datatable_ric_convenzioni');

        var oTable = table.dataTable({
            "columns": [{
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": true
            }, {
                "orderable": false
            }],
            "order": [
                [7, 'asc'],
            ],
            "lengthMenu": [
                [5, 10, 20, -1],
                [5, 10, 20, "Tutti"] // change per page values here
            ],
            "language": {
                "search": "Filtra i record:",
                "emptyTable": "Nessun dato disponibile nella tabella",
                "zeroRecords": "Nessuna corrispondenza trovata",
                "info": "Mostra da _START_ a _END_ di _TOTAL_ voci",
                "infoEmpty": "Nessuna voce da mostrare",
                "infoFiltered": " (filtrato da _MAX_ voci totali)"
            },
            "pageLength": 5, // set the initial value,
            "columnDefs": [{  // set default column settings
                'orderable': true,
                'targets': [0]
            }, {
                "searchable": true,
                "targets": [0]
            }],
        });

        var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

        var tableWrapper = jQuery('#datatable_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown
    }

    function initTableFineTirocinio() {

        var table = jQuery('#datatable_fine_tirocinio');

        var oTable = table.dataTable({
            "columns": [{
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": true
            }, {
                "orderable": false
            }, {
                "orderable": true
            }, {
                "orderable": false
            },{
                "orderable": false
            }, {
                "orderable": true
            }, {
                "orderable": false
            }],
            "order": [
                [14, 'asc'],
            ],
            "lengthMenu": [
                [5, 10, 20, -1],
                [5, 10, 20, "Tutti"] // change per page values here
            ],
            "language": {
                "search": "Filtra i record:",
                "emptyTable": "Nessun dato disponibile nella tabella",
                "zeroRecords": "Nessuna corrispondenza trovata",
                "info": "Mostra da _START_ a _END_ di _TOTAL_ voci",
                "infoEmpty": "Nessuna voce da mostrare",
                "infoFiltered": " (filtrato da _MAX_ voci totali)"
            },
            "pageLength": 5, // set the initial value,
            "columnDefs": [{  // set default column settings
                'orderable': true,
                'targets': [0]
            }, {
                "searchable": true,
                "targets": [0]
            }],
        });

        var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

        var tableWrapper = jQuery('#datatable_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
        tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown
    }

    initTableRicTiro();
    initTableRicConvenzioni();
    initTableFineTirocinio();

</script>
</body>
</html>
