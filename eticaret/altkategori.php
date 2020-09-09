<?php
 
header('content-type:text/html; charset=utf-8');
 
include 'nedmin/netting/baglan.php';
 

$query = "SELECT * FROM kategori order by kategori_id";
$goster = $db->prepare($query);
$goster->execute(); 
 
echo $toplamSatirSayisi = $goster->rowCount(); 
 
$tumSonuclar = $goster->fetchAll(); 

 

$altKategoriSayisi = 0;
for ($i = 0; $i < $toplamSatirSayisi; $i++) {
    if ($tumSonuclar[$i]['kategori_ust'] == "0") {
        $altKategoriSayisi++;
    }
}
 
echo "kategori ($altKategoriSayisi) <br />";
 
echo "\n";
echo "<ul>";
echo "\n";
 
for ($i = 0; $i < $toplamSatirSayisi; $i++) {
    if ($tumSonuclar[$i]['kategori_ust'] == "0") {
        kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
    }
}
 
echo "</ul>";
 

 
function kategori($kategori_id, $kategori_ad, $kategori_ust) {
 
    global $tumSonuclar;
    global $toplamSatirSayisi;
 
    
    $altKategoriSayisi = 0;
    for ($i = 0; $i < $toplamSatirSayisi; $i++) {
        if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
            $altKategoriSayisi++;
        }
    }
    
 
    echo "\n";
    echo "<li>";
    echo "\n";
 
    echo "\t";
    echo "<a href='$kategori_ad.html'>  $kategori_ad  ";
    if ($altKategoriSayisi > 0) {
        echo "( $altKategoriSayisi )";
    }
    echo "</a>";
 
    if ($altKategoriSayisi > 0) { 
        echo "\n";
        echo "<ul>";
 
        for ($i = 0; $i < $toplamSatirSayisi; $i++) {
 
            if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
                kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
            }
        }
 
        echo "</ul>";
    }
    echo "\n";
    echo "</li>";
 
    echo "\n";
}
?>