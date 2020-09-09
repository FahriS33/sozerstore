<div class="col-md-3"><!--sidebar-->
	<div class="title-bg">
		<div class="title">Kategoriler</div>
	</div>
	
	<div class="categorybox">
		
		<ul>
			
					<?php 



			$query = "SELECT * FROM kategori order by kategori_id";
			$goster = $db->prepare($query);
$goster->execute(); 

 $toplamSatirSayisi = $goster->rowCount(); 
 
$tumSonuclar = $goster->fetchAll(); 



$altKategoriSayisi = 0;
for ($i = 0; $i < $toplamSatirSayisi; $i++) {
	if ($tumSonuclar[$i]['kategori_ust'] == "0") {
		$altKategoriSayisi++;
	}
}



for ($i = 0; $i < $toplamSatirSayisi; $i++) {
	if ($tumSonuclar[$i]['kategori_ust'] == "0") {
		kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
	}
}



function kategori($kategori_id, $kategori_ad, $kategori_ust) {

	global $tumSonuclar;
	global $toplamSatirSayisi;

    
	$altKategoriSayisi = 0;
	for ($i = 0; $i < $toplamSatirSayisi; $i++) {
		if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
			$altKategoriSayisi++;
		}
	}
    

	?>

	

	<li>

		<a href="kategori-<?=seo($kategori_ad) ?>"><?php echo $kategori_ad ?></a>
		<?php 
		if ($altKategoriSayisi > 0) {
			echo "( $altKategoriSayisi )";
		}
		?>
	</a>

	<?php

    if ($altKategoriSayisi > 0) { 
    	echo "<ul>";

    	for ($i = 0; $i < $toplamSatirSayisi; $i++) {

    		if ($tumSonuclar[$i]['kategori_ust'] == $kategori_id) {
    			
    			kategori($tumSonuclar[$i]['kategori_id'], $tumSonuclar[$i]['kategori_ad'], $tumSonuclar[$i]['kategori_ust']);
    		}
    	}

    	echo "</ul>";
    }
    ?>



</li> 


<?php 
}
?>
		</ul>
	</div>



	

	<div class="ads">
		<a href="product.htm"><img src="images\ads.png" class="img-responsive" alt=""></a>
	</div>

	<div class="title-bg">
		<div class="title">Çok Satanlar</div>
	</div>
	<div class="best-seller">
		<ul>
			<li class="clearfix">
				<a href="#"><img src="images\Macbook.jpeg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="http://localhost/eticaret/urun-apple-macbook-pro-13-3-muhn2tu-a-space-grey-15" class="smalltitle2">Macbook</a>
					<p class="smallprice2">Fiyat : ₺5000 </p>
				</div>
			</li>
			<li class="clearfix">
				<a href="http://localhost/eticaret/urun-xiaomi-redmi-note-9-pro-128-gb-16"><img src="images\xioami1.jpeg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2">Xiaomi</a>
					<p class="smallprice2">Fiyat : ₺1600 </p>
				</div>
			</li>
			<li class="clearfix">
				<a href="http://localhost/eticaret/urun-canon-eos-250d-18-55mm-iii-19"><img src="images\canon1.jpeg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2">Canon</a>
					<p class="smallprice2">Fiyat : ₺3245 </p>
				</div>
			</li>
		</ul>
	</div>

			</div>