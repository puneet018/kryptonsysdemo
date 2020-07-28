<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ include file='header.jsp'%>
<link rel="stylesheet" href="css/index.css" type="text/css">
<div class="content">
	<div class="parallax-bg">
		<span>
			<h1>KRYPTONSYS</h1> <!--<form class="search-box navbar-form" role="search">
                <div class="form-group s-display">
                    <input type="text" class="sb-width form-control" placeholder="Search book...">
                </div>
                <button type="submit" class="btn btn-default">BooK</button>
            </form>-->
			<h5></h5>
			<h4>"we are develop Websites & Android Application"</h4>
			<h2>PROJECTS</h2>
			<a href="home.jsp">HOME</a>
		</span>

	</div>
	<section>
		<div class="container">

			<div class="col-md-4 small-containers small-container1">
				<h4>JAVA WEB</h4>
				<div class="jumbtron">
					<img class="image-responsive" src="../image/homepic.png"></img>
					<p class="lead">Cras justo odio, dapibus ac facilisis in,
						egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor
						mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
				</div>
			</div>
			<div class="col-md-4 small-containers small-container2">
				<h4>PHP WEB</h4>
			</div>
			<div class="col-md-4 small-containers small-container3">
				<h4>Android</h4>
			</div>

			<h2>Add Player</h2>
			<form id="form1" enctype="multipart/form-data" action="addplayer"
				method="post">
				<table>
					<tr>
						<td>Enter Player Name :</td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td>Select Photo</td>
						<td><input type="file" name="photo" />
					</tr>
				</table>
				<p />
				<input type="submit" value="Add Photo" />
			</form>
			<p />
			<a href="listplayers">List Players</a>


		</div>
	</section>
</div>

<script type="text/javascript">
	// Auto call function
	(function() {
		var documentEl = $(document), parallaxBg = $('div.parallax-bg');
		documentEl.on('scroll', function() {
			var currScrollPos = documentEl.scrollTop();

			parallaxBg.css('background-position', '0 ' + -currScrollPos / 4
					+ 'px');
			$('#alert').html(currScrollPos);
		});
	})();
</script>
<%@ include file='footer.jsp'%>