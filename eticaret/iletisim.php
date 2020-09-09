<?php include 'header.php' ?>

<div class="container">
	
	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">
		
	</div>

	
	<div class="title-bg">
		<div class="title">İletişim Sayfası</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<p class="page-content">
				Bize aşağıdaki bilgilerden ulaşabilirsiniz yada  form maili kullanabilirsiniz.
			</p>
			<ul class="contact-widget">
				<li class="fphone"><?php echo  $ayarcek['ayar_tel'] ?></li>
				<li class="fmobile"><?php echo  $ayarcek['ayar_gsm'] ?></li>
				<li class="fmail lastone"><?php echo  $ayarcek['ayar_mail'] ?></li>
			</ul>
		</div>
		<div class="col-md-7 col-md-offset-1">
			
			
			<div id="googlemaps" class="google-map google-map-footer">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51396.68178624627!2d33.896237524757645!3d36.37790983950674!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d8dd803117ff13%3A0x640f53d4646d3662!2sSilifke%2C%20Mersin!5e0!3m2!1str!2str!4v1599591861095!5m2!1str!2str" width="550" height="250" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

		</div>
	</div>
</div>

<div class="title-bg">
	<div class="title">iletişim Formu</div>
</div>
<div class="qc">
	<form action="" method="POST" role="form">
		
		<div class="form-group">
			<label for="name">Ad Soyad<span>*</span></label>
			<input type="text" name="adsoyad" class="form-control" id="name">
		</div>
		<div class="form-group">
			<label for="email">Mail<span>*</span></label>
			<input type="email" name="email" class="form-control" id="email">
		</div>
		<div class="form-group">
			<label for="text">Mesaj<span>*</span></label>
			<textarea name="mesaj" class="form-control" id="text"></textarea>
		</div>

		<?php 
		$sayi1=rand(10,30);
		$sayi2=rand(0,10);
		$toplam=$sayi1+$sayi2;
		?>

		<input type="hidden" value="<?php echo $toplam; ?>" name="toplam">

		<div class="form-group">
			<label for="name">İşlem Sonucu?<span>*</span></label>
			<input type="text" name="islem"  placeholder="<?php echo $sayi1." + ".$sayi2. " kaçtır ?";  ?>" class="form-control" id="name">
		</div>
		<button type="submit" class="btn btn-default btn-red btn-sm">Formu Gönder</button>
	</form>
</div>
<div class="spacer"></div>

</div>

<?php include 'footer.php' ?>