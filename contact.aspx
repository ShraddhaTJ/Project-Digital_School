﻿<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="home.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br />
<html>
<head>
<title></title>
<link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Montserrat+Alternates' rel='stylesheet' type='text/css'>
</head>
<body>
<%--<div class="header-bg">
	<div class="wrap"> 
		<div class="total-box">
				<div class="total">
					<div class="header_top">
				     	<div class="menu">
				     		<ul>
						    	<li><a href="index.html">Home</a></li>
						    	<li><a href="about.html">About</a></li>
						    	<li><a href="staff.html">Staff</a></li>
						    	<li><a href="programs.html">Programs</a></li>
						    	<li class="active"><a href="contact.html">Contact</a></li>
						    	<div class="clear"></div>
			     			</ul>
				     	</div>
				     	<ul class="follow_icon">
							<li><a href="#" style="opacity: 1;"><img src="web/images/fb.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="web/images/tw.png" alt=""></a></li>
							<li><a href="#" style="opacity: 1;"><img src="web/images/rss.png" alt=""></a></li>
						</ul>
		     			<div class="clear"></div>
		     	</div>
			     <div class="header-bottom">
					 <div class="logo">
						<h1><a href="index.html">Guidance</a></h1>
					 </div>
					<div class="search">
						   <form>
						    	<input type="text" value="">
						    	<input type="submit" value="">
						  </form>
					</div>
					<div class="clear"></div> 
				</div>
			</div>	
		</div>
	 </div>
</div>--%>
	<div class="banner-box">
		<div class="wrap">
			<div class="main-top">
				<div class="main">
			    <div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3 style="text-align: left">Contact Us</h3>
					    <form method="post" action="contact-post.html">
					    	<div style="text-align: left">
						    	<span>
                                <div style="text-align: left">
                                    <label>Name</label></div>
                                </span>
						    	&nbsp;<span><input name="userName" type="text" class="textbox"><div 
                                    style="text-align: left">
                                </div>
                                </span>
						    &nbsp;</div>
						    <div style="text-align: left">
						    	<span>
                                <div style="text-align: left">
                                    <label>E-Mail</label></div>
                                </span>
						    	&nbsp;<span><input name="userEmail" type="text" class="textbox"><div 
                                    style="text-align: left">
                                </div>
                                </span>
						    &nbsp;</div>
						  
						    <div>
						    	<span>
                                <div style="text-align: left">
                                    <label>Subject</label></div>
                                </span>
						    	&nbsp;<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="Submit"></span>
						  </div>
					    </form>
				  </div>
  				</div>
				<div class="col span_1_of_3">
					
      			<div class="company_address">
				     	<h3>Address</h3>
						    	<p>500 Lorem Ipsum Dolor Sit,</p>
						   		<p>22-56-2-9 Sit Amet, Lorem,</p>
						   		<p>USA</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>info[at]mycompany.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				 </div>
				 <div class="clear"></div> 
			  </div>
			  <div class="map">
							   	    <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
							  </div>
				</div>
			</div>
		</div>
		<%--<div class="main-bottom">
			<div class="wrap">
			<div class="content-bottom">
				<div class="col_1_of_3 span_1_of_3">
					<h3>Welcome to our Centre!</h3>
					<p class="desc2"><strong>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt.</strong></p>
					<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequ.</p>
					<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut conse ctetur adipisicing elit, sed do eiusmod conse ctetur adipisicing elit, sed do eiusmod</p>
					<a href="#" class="btn btn-primary"><span>Read more</span><img src="web/images/more_arrow.png" alt=""></a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<h3>Teaching Support</h3>
					<ul class="dishes_list">
										<li><a href="#">Consectetur adipisicing elit</a></li>
										<li><a href="#">Sed do eiusmod tempor incididunt</a></li>
										<li><a href="#">Labore et dolore magna aliqua.</a></li>
										<li><a href="#">Sed do eiusmod tempor Dolore</a></li>
										<li><a href="#">Abore et dolore magna Dolore elit</a></li>
										<li><a href="#">Incididunt ut labore et dolore</a></li>
										<li><a href="#">Incididunt ut labore et dolore</a></li>
										<li class="last"><a href="#">Adipisicing elit, sed do eiusmod</a></li>
										<div class="clear"> </div>
									</ul>
									<a href="#" class="btn btn-primary1"><span>Read more</span><img src="web/images/more_arrow.png" alt=""></a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<h3>Latest News</h3>
								<div class="latest-news-grid">
									<div class="latest-news-pic">
										<img src="web/images/pic.jpg" title="imag-name">
									</div>
									<div class="latest-news-info">
										<a href="#">Jan 21.01.2013</a>
										<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
									</div>
									<div class="clear"> </div>
								</div>
								<div class="latest-news-grid">
									<div class="latest-news-pic">
										<img src="web/images/pic1.jpg" title="imag-name">
									</div>
									<div class="latest-news-info">
										<a href="#">Jan 21.01.2013</a>
										<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
									</div>
									<div class="clear"> </div>
								</div>
								<div class="latest-news-grid">
									<div class="latest-news-pic">
										<img src="web/images/pic2.jpg" title="imag-name">
									</div>
									<div class="latest-news-info">
										<a href="#">Jan 21.01.2013</a>
										<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
									</div>
									<div class="clear"> </div>
								</div>
								<div class="latest-news-grid">
									<div class="latest-news-pic">
										<img src="web/images/pic3.jpg" title="imag-name">
									</div>
									<div class="latest-news-info">
										<a href="#">Jan 21.01.2013</a>
										<p class="desc1">Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor</p>
									</div>
									<div class="clear"> </div>
								</div>
					<a href="#" class="btn btn-primary2"><span>Read more</span><img src="web/images/more_arrow.png" alt=""></a>
				</div>
				<div class="clear"></div> 
			</div>
			</div>
		</div>
	    <div class="wrap">
		   <div class="copy-right">
				<p>Design by <a href="http://w3layouts.com/"> W3layouts</a></p>
			</div>
		</div>
	</div>--%>
</body>
</html>

</div>

</asp:Content>
