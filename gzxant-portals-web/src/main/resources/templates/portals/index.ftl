<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="webthemez">
    <title>小蚂蚁</title>
	<!-- core CSS -->
    <link href="${rc.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${rc.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${rc.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${rc.contextPath}/css/prettyPhoto.css" rel="stylesheet">
    <link href="${rc.contextPath}/css/styles.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="${rc.contextPath}/img/ico/favicon.ico">

    <style type="text/css">

        #hero-banner{
            background: url('${rc.contextPath}/img/banner/banner.jpg');
        }
    </style>
</head> 

<body id="home">

    <header id="header">
        <nav id="main-nav" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container" >
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${rc.contextPath}/index.html"><img src="${rc.contextPath}/${portalsCompanyInformation.logo}" alt="logo" height="80" width="100" ></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="#home">蚂蚁首页</a></li>
						<li class="scroll"><a href="#features">关于我们</a></li>
                        <li class="scroll"><a href="#services">项目案例</a></li>
                        <li class="scroll"><a href="#about">新闻资讯</a></li>
                        <li class="scroll"><a href="#pricing">联系我们</a></li>
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="hero-banner">
             <div class="banner-inner">
                    <div class="container">
                        <div class="row">
                            <div >
                                 <!-- 超级个体-->
                                    <h2><b>${portalsCompanyInformation.portalsMotto}</b></h2>
                                    <p><b>${portalsCompanyInformation.portalsMotto}</b></p>
                            </div>
                        </div>
                    </div>
                </div>
    </section><!--/#main-slider-->


<!-- 栏目表 文章表  -->
    <section id="our-team">
        <div class="container">
            <div class="section-header">
                <!--公司文章栏目   描述该栏目有什么内容-->
                <h2 class="section-title wow fadeInDown">${portalsColumn.columnName}</h2>
                <p class="wow fadeInDown">${portalsColumn.remark}</p>
            </div>


            <div class="row text-center">

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="team-img">
                            <img class="img-responsive" src="${rc.contextPath}/${portalsCompanyInformation.logo}" alt="">
                        </div>
                        <div class="team-info">
                            <strong>${portalsArticle.title}</strong><br>
                            <p align="left"> <span style="font-size: 10px">
                                ${portalsArticle.tags}
                            </span></p>
                        </div>
                        <#--<ul class="social-icons">-->
                            <#--<li><a href="#"><i class="fa fa-facebook"></i></a></li>-->
                            <#--<li><a href="#"><i class="fa fa-twitter"></i></a></li>-->
                            <#--<li><a href="#"><i class="fa fa-google-plus"></i></a></li>-->
                            <#--<li><a href="#"><i class="fa fa-linkedin"></i></a></li>-->
                        <#--</ul>-->
                    </div>
                </div>

            </div>
        </div>
    </section><!--/#our-team-->

    <!--    ======解决方案===项目案例======portals_column==========-->

    <section id="our-team">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title wow fadeInDown">${portalsColumn.columnName}</h2>
                <p class="wow fadeInDown"> ${portalsColumn.remark}</p>
            </div>
			
			 	
            <div class="row text-center">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="team-img">
                            <img class="img-responsive" src="${rc.contextPath}/${portalsCompanyInformation.logo}" alt="">
                        </div>
                        <div class="team-info">
                            <strong>${portalsArticle.title}</strong>
                            <p align="left"> <span style="font-size: 10px">${portalsArticle.tags}</span></p>
                        </div> 
                    </div>
                </div>
            </div>



        </div>
    </section><!--/#our-team-->


    <!-- portals_column    新闻栏目 -->
    <section class="testimonial-area" id="testimonial">
			<div class="container">
				<div class="section-header">
                <h2 class="section-title wow fadeInDown">${portalsColumn.columnName}  </h2>
                <p class="wow fadeInDown">  ${portalsColumn.remark}   </p>
            </div>
				<div class="row">
					<div class="col-md-4">
						<div class="single-testimonial animate_fade_in" style="opacity: 1; right: 0px;">

                            <div class="row">
                                <#--<div class="col-xs-3">-->
                                    <#--<img src="${rc.contextPath}/img/pic1.jpg" alt="client">-->
                                <#--</div>-->
                                <div class="col-xs-9 half-gutter">
                                    <h5>${portalsArticle.title}</h5>
                                </div>
                            </div>

                            <div class="row">
								<div class="col-xs-12">
									<blockquote>${portalsArticle.tags} </blockquote>
								</div>
							</div>


						</div>
					</div>

				</div>
			</div>
		</section>

    <section id="contact-us">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title wow fadeInDown">${portalsAboutMe.aboutMeTitle}</h2>
                <p class="wow fadeInDown">${portalsAboutMe.aboutMeContent}</p>
            </div>
        </div>
    </section><!--/#contact-us-->


    <!-- portalsMessage  -->
    <section id="contact">
        
        <div class="container">
            <div class="container contact-info">
                <div class="row">
				  <div class="col-sm-4 col-md-4">
                        <div class="contact-form">
                            <h3>联系我们</h3>

                            <address>
                              <strong>地址: ${portalsCompanyInformation.address}</strong><br>
                                <strong>电话:${portalsMessage.phone} </strong>  <br>
                                <strong>邮箱:${portalsMessage.email} </strong>  <br>
                                <strong>qq:${portalsMessage.qq} </strong>  <br>

                            </address>
					</div></div>
                    <div class="col-sm-8 col-md-8">
                        <div class="contact-form">
                       
                            <form id="main-contact-form" name="contact-form" method="post" action="/gzxant/customer/insert">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="姓名" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="邮箱" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" class="form-control" placeholder="电话" required>
                                </div>
                                <div class="form-group">
                                    <textarea name="message_content" class="form-control" rows="8" placeholder="留言" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">留言</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
   </section><!--/#bottom-->

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">关于我们 <br>
                    <address>
                        <strong>地址: ${portalsCompanyInformation.address}</strong><br>
                        <strong>电话:${portalsMessage.phone} </strong>  <br>
                        <strong>邮箱:${portalsMessage.email} </strong>  <br>
                        <strong>qq:${portalsMessage.qq} </strong>  <br>

                    </address>
                </div>

                <#--<div class="col-sm-6">-->
                    <#--<ul class="social-icons">-->
                        <#--<li><a href="#"><i class="fa fa-facebook"></i></a></li>-->
                        <#--<li><a href="#"><i class="fa fa-twitter"></i></a></li>-->
                        <#--<li><a href="#"><i class="fa fa-google-plus"></i></a></li>-->
                        <#--<li><a href="#"><i class="fa fa-linkedin"></i></a></li> -->
                        <#--<li><a href="#"><i class="fa fa-youtube"></i></a></li>-->
                        <#--<li><a href="#"><i class="fa fa-github"></i></a></li>-->
                    <#--</ul>-->
                <#--</div>-->


            </div>
        </div>
    </footer><!--/#footer-->

    <script src="${rc.contextPath}/js/jquery.js"></script>
    <script src="${rc.contextPath}/js/bootstrap.min.js"></script>
    <script src="${rc.contextPath}/js/mousescroll.js"></script>
    <script src="${rc.contextPath}/js/smoothscroll.js"></script>
    <script src="${rc.contextPath}/js/jquery.prettyPhoto.js"></script>
    <script src="${rc.contextPath}/js/jquery.isotope.min.js"></script>
    <script src="${rc.contextPath}/js/jquery.inview.min.js"></script>
    <script src="${rc.contextPath}/js/wow.min.js"></script>
    <script src="${rc.contextPath}/js/custom-scripts.js"></script>
</body>
</html>