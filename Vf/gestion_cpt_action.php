<?php
$mysqli = new mysqli('localhost','zhajjiza0','qws1x8tg','zfl2-zhajjiza0');


// Pour l'activation
if (isset($_POST['activation']))
{
	$pseudo=htmlspecialchars(addslashes($_POST['pseudo']));
	$sql="UPDATE T_PROFILUTILISATEUR_PUR set PUR_VALIDITE ='A' where CUR_ID='$pseudo'";
	$mysqli->query($sql);
	header('Location:admin_accueil.php');
}
// Pour la  désactivation
if (isset($_POST['desactivation']))
{
	$pseudo=htmlspecialchars(addslashes($_POST['pseudo']));
	$sql="UPDATE T_PROFILUTILISATEUR_PUR set PUR_VALIDITE='D' where CUR_ID='$pseudo'";
	$mysqli->query($sql);
	header('Location:admin_accueil.php');
}
					


?>
<?php $mysqli->close();?>