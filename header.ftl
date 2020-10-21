<#--
	@package Akina
-->
<#macro header title>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title itemprop="name">${title!}</title>
	<meta name="description" content="${meta_description!}"/>
	<meta name="keywords" content="${meta_keywords!}"/>

	<@global.head />
	<link rel="stylesheet" href="https://at.alicdn.com/t/font_679578_dishi1yoavm.css" media="all">
	<link rel='stylesheet' id='siren-css'  href='${theme_base!}/style.min.css?ver=2.0.6.170420' type='text/css' media='all' />
	<link rel="stylesheet" href="https://at.alicdn.com/t/font_2010950_hzxxpauv5wv.css" media="all">
	<link href="https://cdn.jsdelivr.net/gh/l-lin/font-awesome-animation@0.3.0/dist/font-awesome-animation.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+SerifMerriweather|Merriweather+Sans|Source+Code+Pro|Ubuntu:400,700|Noto+Serif+SC" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/baguettebox.js@1.11.1/dist/baguetteBox.min.css" rel="stylesheet">
	<link href="${theme_base!}/plugins/highlight/css/highlight-${settings.code_pretty!'Default'}.css" type="text/css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/gh/zhangfeibiao/files@master/js/linkCard.js"></script>
	<#if settings.is_aplayer!false>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.css">
	</#if>
	<#if settings.tag_cloud!true>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jqcloud2@2.0.3/dist/jqcloud.min.css">
	</#if>
	<link href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" rel="stylesheet">
	<#if settings.photos_style == "justify">
	<link href="https://cdn.jsdelivr.net/npm/justifiedGallery@3.8.1/dist/css/justifiedGallery.min.css" rel="stylesheet">
	</#if>
	<#include "inc/decorate.ftl">
	<script type="text/javascript">
		if (!!window.ActiveXObject || "ActiveXObject" in window) { //is IE?
			alert('请抛弃万恶的IE系列浏览器吧。');
		}
	</script>
</head>
<body class="hfeed chinese-font serif">
<section id="main-container">
    <#if settings.head_focus!true>
		<div class="headertop ${settings.focus_img_filter!'filter-nothing'}">
			<#include "layouts/imgbox.ftl">
			<#if settings.bgvideo!false>
			<#if settings.bgvideo_url?? && settings.bgvideo_url!= '' || settings.bgvideo_id?? && settings.bgvideo_id!= ''>
			<#include "layouts/videobox.ftl">
			</#if>
			</#if>
		</div>
	</#if>
	<div id="page" class="site wrapper">
		<header class="site-header  <#if (is_index)!false == true>is-homepage</#if>" role="banner">
			<div class="site-top">
<#--				<div class="site-branding">-->
<#--					<#if blog_logo?? && blog_logo!=''>-->
<#--						<div class="site-title">-->
<#--							<a href="${blog_url!}">-->
<#--								<img src="${blog_logo!}">-->
<#--							</a>-->
<#--						</div>-->
<#--					<#else>-->
<#--						<h1 class="site-title"><a href="${blog_url!}">${blog_title!}</a></h1>-->
<#--					<!-- logo end &ndash;&gt;-->
<#--					</#if>-->
<#--				</div><!-- .site-branding &ndash;&gt;-->
				<div class="header-user-avatar">
<#--					 <img src="${(user.avatar)!}" width="30" height="30">-->
					 <img src="https://cdn.jsdelivr.net/gh/zhangfeibiao/files@master/images/avatar.png" width="30" height="30">
					<div class="header-user-menu">
						<div class="herder-user-name">
							<div class="herder-user-name-u">${(user.nickname)!}</div>
						</div>
<#--						<div class="user-menu-option">-->
<#--							<a href="${context!}/admin/index.html#/dashboard" target="_blank">管理中心</a>-->
<#--							<a href="${context!}/admin/index.html#/posts/write" target="_blank">撰写文章</a>-->
<#--							<a href="${context!}/admin/index.html#/user/profile" target="_blank">个人资料</a>-->
<#--						</div>-->
					</div>
				</div>
				<#if settings.top_search!true>
				<div class="searchbox"><i class="iconfont js-toggle-search iconsearch">&#xe65c;</i></div>
				</#if>
				<div class="lower-cantiner">
					<div class="lower">
						<#if !settings.shownav!false>
							<div id="show-nav" class="showNav mobile-fit">
								<div class="line line1"></div>
								<div class="line line2"></div>
								<div class="line line3"></div>
							</div>
						</#if>
						<nav <#if settings.shownav!false>class="navbar"</#if>>
							<#include "layouts/nav.ftl">
						</nav>
						<!-- #site-navigation -->
					</div>
				</div>
			</div>
		</header><!-- #masthead -->

		<#nested />
		<div id="content" class="site-content">
</#macro>
