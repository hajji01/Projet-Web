<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>It.Next - IT Service Responsive Html Theme</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- site icons -->
<link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Site css -->
<link rel="stylesheet" href="css/style.css" />
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- colors css -->
<link rel="stylesheet" href="css/colors1.css" />
<!-- custom css -->
<link rel="stylesheet" href="css/custom.css" />
<!-- wow Animation css -->
<link rel="stylesheet" href="css/animate.css" />
<!-- revolution slider css -->
<link rel="stylesheet" type="text/css" href="revolution/css/settings.css" />
<link rel="stylesheet" type="text/css" href="revolution/css/layers.css" />
<link rel="stylesheet" type="text/css" href="revolution/css/navigation.css" />
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
      
</head>
<body id="default_theme" class="it_service">
<!-- loader -->
<div class="bg_load"> <img class="loader_animation" src="images/loaders/loader_1.png" alt="#" /> </div>
<!-- end loader -->
<!-- header -->
<header id="default_header" class="header_style_1">
  <!-- header top -->
  <div class="header_top">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="full">
            <div class="topbar-left">
              <ul class="list-inline">
                <li> <span class="topbar-label"><i class="fa  fa-home"></i></span> <span class="topbar-hightlight">540 Lorem Ipsum New York, AB 90218</span> </li>
                <li> <span class="topbar-label"><i class="fa fa-envelope-o"></i></span> <span class="topbar-hightlight"><a href="mailto:info@yourdomain.com">info@yourdomain.com</a></span> </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-4 right_section_header_top">
          <div class="float-left">
            <div class="social_icon">
              <ul class="list-inline">
                <li><a class="fa fa-facebook" href="https://www.facebook.com/" title="Facebook" target="_blank"></a></li>
                <li><a class="fa fa-google-plus" href="https://plus.google.com/" title="Google+" target="_blank"></a></li>
                <li><a class="fa fa-twitter" href="https://twitter.com" title="Twitter" target="_blank"></a></li>
                <li><a class="fa fa-linkedin" href="https://www.linkedin.com" title="LinkedIn" target="_blank"></a></li>
                <li><a class="fa fa-instagram" href="https://www.instagram.com" title="Instagram" target="_blank"></a></li>
              </ul>
            </div>
          </div>
          <div class="float-right">
            <div class="make_appo"> <a class="btn white_btn" href="make_appointment.html">Make Appointment</a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end header top -->
  <!-- header bottom -->
  <div class="header_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
          <!-- logo start -->
          <div class="logo"> <a href="index.php"><img src="images/logos/it_logo.png" alt="logo" /></a> </div>
          <!-- logo end -->
        </div>
        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
          <!-- menu start -->
          <div class="menu_side">
            <div id="navbar_menu">
              <ul class="first-ul">
                <li> <a class="active" href="index.php">Home</a>                 
                </li>
                <li><a href="sel.php">Selection</a></li>
                <li><a href="inscription.php">Inscription</a></li>
                <li><a href="session.php">Se connecter</a></li>
              </ul>
            </div>
          </div>
          <!-- menu end -->
        </div>
      </div>
    </div>
  </div>
  <!-- header bottom end -->
</header>
<!-- end header -->
<!-- section -->
<div id="slider" class="section main_slider">
  <?php
    if(isset($_GET['ELE_ID']))
    {
          $mysqli = new mysqli('localhost','zhajjiza0','qws1x8tg','zfl2-zhajjiza0'); 
          if ($mysqli->connect_errno)
          {
              // Affichage d'un message d'erreur
              echo "Error: Problème de connexion à la BDD \n";
              echo "Errno: " . $mysqli->connect_errno . "\n";
              echo "Error: " . $mysqli->connect_error . "\n";
              // Arrêt du chargement de la page
           exit();
          }
          // Instructions PHP à ajouter pour l'encodage utf8 du jeu de caractères
          if (!$mysqli->set_charset("utf8")) {
              printf("Pb de chargement du jeu de car. utf8 : %s\n", $mysqli->error);
          exit();
          }
            $requete1="SELECT SELE_TITRE FROM T_SELECTION_SELE where SELE_ID=".$_GET['SELE_ID'].";";
          $result1 = $mysqli->query($requete1);
          if ($result1 == false) //Erreur lors de l’exécution de la requête
          { // La requête a echoué
           echo "Error: La requête a echoué \n";
           echo "Errno: " . $mysqli->errno . "\n";
           echo "Error: " . $mysqli->error . "\n";
           exit();
          }
          $intitule = $result1->fetch_assoc();
          echo ("<h1>" .$intitule['SELE_TITRE']. "</h1>");


          $requete2="SELECT * FROM T_ELEMENT_ELE WHERE ELE_ID=".$_GET['ELE_ID'].";";
          $resultat2=$mysqli->query($requete2);
          if ($resultat2 == false) //Erreur lors de l’exécution de la requête
          { // La requête a echoué
           echo "Error: La requête a echoué \n";
           echo "Errno: " . $mysqli->errno . "\n";
           echo "Error: " . $mysqli->error . "\n";
           exit();
          }
          $elt = $resultat2->
         fetch_assoc();
         
          echo("<img class='picture' src='images/".$elt['ELE_FICIMAGE']."'>"); // requête pour récupération de l'image
          echo ("<p class='description'>".$elt['ELE_DESCRIPTION']."</p>"); // requête pour récupération du description d'élément

          $requete3="SELECT ELE_ID FROM TJ_RELIE_REL WHERE ELE_ID >".$_GET['ELE_ID']." AND SELE_ID = ".$_GET['SELE_ID']." ORDER BY ELE_ID ASC LIMIT 1;";
          $resultat3=$mysqli->query($requete3);
           if ($resultat3 == false) //Erreur lors de l’exécution de la requête
          { // La requête a echoué
           echo "Error: La requête a echoué \n";
           echo "Errno: " . $mysqli->errno . "\n";
           echo "Error: " . $mysqli->error . "\n";
           exit();
          }
          $element = $resultat3->fetch_assoc();
          if (isset($element)) {
            echo("<h4><a href='affichagesel.php?SELE_ID=".$_GET['SELE_ID']."&ELE_ID=".$element['ELE_ID']."'><button class='Lesbuttons'>Suivant</button></a></h4>"); //Pour pouvoir passer à l'élément suivant de la séléction
          } 



          $requete4="SELECT ELE_ID FROM TJ_RELIE_REL WHERE ELE_ID <".$_GET['ELE_ID']." AND SELE_ID = ".$_GET['SELE_ID']." ORDER BY ELE_ID DESC LIMIT 1;";
          $resultat4=$mysqli->query($requete4);
           if ($resultat4 == false) //Erreur lors de l’exécution de la requête
          { // La requête a echoué
           echo "Error: La requête a echoué \n";
           echo "Errno: " . $mysqli->errno . "\n";
           echo "Error: " . $mysqli->error . "\n";
           exit();
          }
          $elementP = $resultat4->fetch_assoc();
          if (isset($elementP)) {
            echo("<h4><a href='affichagesel.php?SELE_ID=".$_GET['SELE_ID']."&ELE_ID=".$elementP['ELE_ID']."'><button class='Lesbuttons'>Précédent</button></a></h4>"); //Pour pouvoir revenir à l'élément précédent de la séléction
          } 

    }
  ?>
</div>
<!-- end section -->
<!-- section -->
</div>
<!-- end section -->
<!-- section -->

<!-- end section -->
<!-- section -->

<!-- end section -->
<!-- section -->

<!-- end section -->
<!-- Modal -->

<!-- End Model search bar -->
<!-- footer -->
<!-- end footer -->
<!-- js section -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- menu js -->
<script src="js/menumaker.js"></script>
<!-- wow animation -->
<script src="js/wow.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<!-- revolution js files -->
<script src="revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="revolution/js/extensions/revolution.extension.video.min.js"></script>
<!-- map js -->
<script>
         // This example adds a marker to indicate the position of Bondi Beach in Sydney,
         // Australia.
         function initMap() {
           var map = new google.maps.Map(document.getElementById('map'), {
             zoom: 11,
             center: {lat: 40.645037, lng: -73.880224},
         styles: [
                  {
                    elementType: 'geometry',
                    stylers: [{color: '#fefefe'}]
                  },
                  {
                    elementType: 'labels.icon',
                    stylers: [{visibility: 'off'}]
                  },
                  {
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                  },
                  {
                    elementType: 'labels.text.stroke',
                    stylers: [{color: '#f5f5f5'}]
                  },
                  {
                    featureType: 'administrative.land_parcel',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#bdbdbd'}]
                  },
                  {
                    featureType: 'poi',
                    elementType: 'geometry',
                    stylers: [{color: '#eeeeee'}]
                  },
                  {
                    featureType: 'poi',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#757575'}]
                  },
                  {
                    featureType: 'poi.park',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                  },
                  {
                    featureType: 'poi.park',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                  },
                  {
                    featureType: 'road',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                  },
                  {
                    featureType: 'road.arterial',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#3d3523'}]
                  },
                  {
                    featureType: 'road.highway',
                    elementType: 'geometry',
                    stylers: [{color: '#eee'}]
                  },
                  {
                    featureType: 'road.highway',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#616161'}]
                  },
                  {
                    featureType: 'road.local',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#9e9e9e'}]
                  },
                  {
                    featureType: 'transit.line',
                    elementType: 'geometry',
                    stylers: [{color: '#e5e5e5'}]
                  },
                  {
                    featureType: 'transit.station',
                    elementType: 'geometry',
                    stylers: [{color: '#000'}]
                  },
                  {
                    featureType: 'water',
                    elementType: 'geometry',
                    stylers: [{color: '#c8d7d4'}]
                  },
                  {
                    featureType: 'water',
                    elementType: 'labels.text.fill',
                    stylers: [{color: '#b1a481'}]
                  }
                ]
         });
         
           var image = 'images/it_service/location_icon_map_cont.png';
           var beachMarker = new google.maps.Marker({
             position: {lat: 40.645037, lng: -73.880224},
             map: map,
             icon: image
           });
         }
      </script>
      <style>
        h1 {
          font-size: 50px;
          text-shadow:0 0 20px #FFFFFF,4px 6px 6px #141414, 0 0 400px #000DD4;
          color:#FFFFFF;
          background-color:#33B2FF; 
          text-align:center;
         }
        .picture {
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 400px;

        }
        .description {
          margin-left: auto;
         margin-right: auto;
         width: 28em;
         text-align: center;
         font-family: "Gill Sans", sans-serif;
         font-size: 1.2em;
         font-weight: bold;
         color: #115CBB;


        }
        .Lesbuttons {
          padding: 8px 2px;
          font-size: 40px;
          border-radius: 50%;
          background-color: #4286f4;
          color: white;
          margin: 2px 400px;
          width: 48%;
        }
      </style>
    }
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->
</body>
</html>
