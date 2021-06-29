<?php

	include_once("database/connection.php");

	$query = "SELECT * FROM lokasi";
	$sql = mysqli_query($conn, $query);

	mysqli_close($conn);

?>

<?php include_once('template/header.php'); ?>

<div class="container-fluid">
	<div class="row mt-4">
		<div class="col-7">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h1 id="title"></h1>
							<br>
							<ul class="list-group">
								<?php
								while($lokasi = mysqli_fetch_array($sql, MYSQLI_ASSOC)) : ?>
								  <li class="list-group-item telunjuk map-class" map-title="<?= $lokasi['nama_lokasi'] ?>" map-src="<?= $lokasi['url'] ?>" onclick="selectMap(this)"><?= $lokasi['nama_lokasi'] ?></li>
								<?php endwhile; ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-5">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127441.5731561793!2d114.7301833890775!3d-3.459147814678052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de686ad57aa9fdf%3A0xd1f27863d3f52ead!2sBanjarbaru%2C%20Kota%20Banjar%20Baru%2C%20Kalimantan%20Selatan!5e0!3m2!1sid!2sid!4v1624874336019!5m2!1sid!2sid" width="100%" height="400px" style="border:5px; solid #333" allowfullscreen="true" loading="lazy" id="map"></iframe>
			<!-- <iframe width="100%" height="300" loading="lazy" frameborder="10" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?q=-6.175307,106.827131&hl=es;z=14&output=embed"></iframe> -->
		</div>
	</div>
</div>
  
<script type="text/javascript">

	const defaultMap = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127441.5731561793!2d114.7301833890775!3d-3.459147814678052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2de686ad57aa9fdf%3A0xd1f27863d3f52ead!2sBanjarbaru%2C%20Kota%20Banjar%20Baru%2C%20Kalimantan%20Selatan!5e0!3m2!1sid!2sid!4v1624874336019!5m2!1sid!2sid";

	const resetActiveSelector = () => {
		const mapClass = document.querySelectorAll('.map-class');

		mapClass.forEach(res => {
			res.classList.remove('active');
		});
	}
	
	const selectMap = (target) => {			
		const map = document.querySelector('#map');
		const title = document.querySelector('#title');

		const mapTitle = target.getAttribute('map-title');
		const mapLink = target.getAttribute('map-src');

		map.src = mapLink;
		title.innerText = mapTitle;

		resetActiveSelector();

		target.classList.add('active');
	}
</script>

<?php include_once('template/footer.php'); ?>