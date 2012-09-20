
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<%@ include file="/includes/header.html"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="../css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}
</style>
<link href="../css/bootstrap-responsive.css" rel="stylesheet">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body class="container">

	<%@ include file="/includes/navbar.html"%>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<%@ include file="/includes/sidebar.html"%>
			</div>
			<!--/span-->
			<div class="span9">
				<div class="hero-unit">
					<h1>The Binary Search Tree</h1>
					<br>
					<h4>What is a Binary Search Tree?</h4>
					<p>A Binary Search Tree is a data structure where the data is
						sorted by keys organized in a non-linear way resembling a
						tree-structure.</p>
					<br>
					<div class="row show-grid">
						<div class="span2" align="center">Linear</div>
						<div class="span4" align="center">The keys in the list are
							sorted ascending.</div>
						<div class="span4" align="center">
							<table border="1">
								<tr>
									<th>Key</th>
									<th>Data</th>
								</tr>
								<tr>
									<td>0</td>
									<td>Mario</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Luigi</td>
								</tr>
								<tr>
									<td>2</td>
									<td>Peach</td>
								</tr>
								<tr>
									<td>3</td>
									<td>Bowser</td>
								</tr>
								<tr>
									<td>4</td>
									<td>Toad</td>
								</tr>

							</table>
						</div>
					</div>
					<br>
					<div class="row show-grid">
						<div class="span2" align="center">Non-linear</div>
						<div class="span3">
							The keys in the Binary Tree are not sorted ascending or
							descending. <br /> <br /> Nodes without any children are
							referred to as <i>"Leaf Nodes"</i>, and the node without any
							parent is referred to as the <i>"Root Node"</i> <br>
							Press the applet and see the Leaf Nodes colored yellow and the Root Node colored red.
						</div>
						<%@ page language="java" %>
						<div class="span4">
							 <applet code="test1.MarkLeavesAndRoot" archive="MarkLeaves.jar" width="380" height="300">
							 Could not load applet</applet>
						</div>
					</div>
				</div>
				<div class="hero-unit">
					<h5>Why is it so beneficial to sort it non-linearly in a
						tree-structure instead of in an ordinary list?</h5>
					An ordinary list has <b>O(n)</b> as the runtime for its search,
					insert, delete and indexing algorithms. <br /> The <i><b>
							balanced </b>Binary Search Tree</i> achieves <b>O(log n)</b> because of
					its distributed data and use of recursion.<br /> It is important
					to <b>note</b> that an <b>unbalanced</b> tree will have <b>O(n)</b> in a
					worst-case scenario. This makes the Binary Search Tree equivalent
					or more advantageous to the other data structures when dealing with
					distributed data.
				</div>
				<div class="hero-unit">
					<div>
						<h5>
							How does a Binary Search Tree achieve <b>O(log n)</b> for its
							algorithms?
						</h5>
						The Binary Search Tree can only achieve <b>O(log n)</b> by
						balancing itself. <br /> It balances itself by always making sure
						that a node's left child's key is <b>inferior</b> than itself and
						the right child's key is <b>greater</b> that itself.
					</div>
					<div>
						<canvas id="myCanvas" width="600" height="300"
							style="border: 1px solid #000000;"></canvas>
						<script type="text/javascript">
							var c = document.getElementById("myCanvas");
							var ctx = c.getContext("2d");
							ctx.beginPath();
							ctx.arc(250, 50, 40, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.beginPath();
							ctx.moveTo(250,90);
							ctx.lineTo(150, 95);
							ctx.stroke();
							ctx.beginPath();
							ctx.moveTo(150,155);
							ctx.lineTo(100, 180);
							ctx.stroke();
							ctx.beginPath();
							ctx.arc(150, 125, 30, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.beginPath();
							ctx.moveTo(250,90);
							ctx.lineTo(290,120);
							ctx.stroke();
							ctx.beginPath();
							ctx.arc(100, 200, 20, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.beginPath();
							ctx.arc(350, 125, 60, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.beginPath();
							ctx.moveTo(350,185);
							ctx.lineTo(400, 220);
							ctx.stroke();
							ctx.beginPath();
							ctx.moveTo(350,185);
							ctx.lineTo(300,225);
							ctx.stroke();
							ctx.beginPath();
							ctx.arc(250, 240, 55, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.beginPath();
							ctx.arc(470, 210, 70, 0, 2 * Math.PI);
							ctx.stroke();
							ctx.font="30px Arial";
							ctx.fillText("'Inferior'",20,50);
							ctx.fillText("'Superior'",420,50);
							ctx.fillText("17",230,250);
							ctx.fillText("25",350,135);
							ctx.fillText("50",450,210);
							ctx.fillText("3",95, 210);
							ctx.fillText("5",140,135);
							ctx.fillText("10",230,60);
						</script>
					</div>
				</div>
			</div>
		</div>
		<!--/span-->
	</div>
	<!--/row-->

	<hr>

	<%@ include file="/includes/footer.jsp"%>

	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap-transition.js"></script>
	<script src="js/bootstrap-alert.js"></script>
	<script src="js/bootstrap-modal.js"></script>
	<script src="js/bootstrap-dropdown.js"></script>
	<script src="js/bootstrap-scrollspy.js"></script>
	<script src="js/bootstrap-tab.js"></script>
	<script src="js/bootstrap-tooltip.js"></script>
	<script src="js/bootstrap-popover.js"></script>
	<script src="js/bootstrap-button.js"></script>
	<script src="js/bootstrap-collapse.js"></script>
	<script src="js/bootstrap-carousel.js"></script>
	<script src="js/bootstrap-typeahead.js"></script>

</body>
</html>
