<#--
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Akina
 */
-->
<#macro footer>
    </div><!-- #content -->
    <#include "comments.ftl">
    <#if is_post??>
        <@comment post,"post" />
    <#elseif is_sheet??>
        <@comment sheet,"sheet" />
    </#if>
    </div><!-- #page Pjax container-->
    <footer id="colophon" class="site-footer" role="contentinfo">
        <div class=inner>
            <div class=site-info>
                <div class="footertext">
                    <p class="foo-logo"
                       style="background-image: url('${settings.footer_logo?default('https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.2/img/Sakura/images/sakura.svg')}');"></p>
                </div>
                <p>&copy; 2017 - 2020&nbsp;
 					<a href="https://www.foreverblog.cn/" target="_blank" style="margin:auto;width:115px;"> <img src="https://img.foreverblog.cn/logo_en_default.png" alt="十年之约" style="width:auto;height:12px;"> </a
                    <a href="https://zhangfeibiao.com">Zhang Feibiao</a> •
                    <a href="https://cdn.zhangfeibiao.com/zhangfeibiao.com.png" target=_blank>赣ICP备17016845号</a><br>
                </p>
            </div>

            <div class=footer-badge>
                <a style="color: #fff" rel=license href="http://halo.run" target=_blank title="由 Halo 驱动">
                    <span class=badge-subject>Powered</span><span class="badge-value bg-blue">Halo</span></a>
            </div>
            <div class=footer-badge>
                <a style="color: #fff" rel=license href="https://github.com/LIlGG/halo-theme-sakura" target=_blank title="本站主题为Sakura主题by LIlGG">
                    <span class=badge-subject>Theme</span><span class="badge-value bg-red">Sakura by LIlGG</span></a>
            </div>
            <div class=footer-badge>
                <a style="color: #fff" rel=license href="https://www.qiniu.com/" target=_blank title="本站CDN加速/云存储由七牛云提供">
                    <span class=badge-subject>Storage</span><span class="badge-value bg-red">七牛云</span></a>
            </div>
            <div class=footer-badge>
                <a style="color: #fff" rel=license href="https://cn.aliyun.com/" target=_blank title="运行于阿里云服务器">
                    <span class=badge-subject>Hosted</span><span class="badge-value bg-brightgreen">阿里云</span></a>
            </div>
            <div class=footer-badge>
                <span class=badge-subject>运行</span><span class="badge-value bg-blueviolet" target=_blank title="本站已运行"><span id=span_dt_dt></span></span>
            </div>
            <script type="text/javascript" async src="https://js.users.51.la/20942519.js"></script>
        </div>
    </footer><!-- #colophon -->
    <div class="openNav">
        <div class="iconflat">
            <div class="icon"></div>
        </div>
        <div class="site-branding">
            <#if blog_logo?? && blog_logo!=''>
                <div class="site-title">
                    <a href="${blog_url!}">
                        <img src="${blog_logo!}">
                    </a>
                </div>
            <#else>
                <h1 class="site-title"><a href="${blog_url!}">${blog_title!}</a></h1>
            </#if>
        </div>
    </div><!-- m-nav-bar -->
    </section><!-- #section -->
    <!-- m-nav-center -->
    <div id="mo-nav">
        <div class="m-avatar">
<#--            <img src="${(user.avatar)!'${theme_base!}/images/avatar.jpg'}">-->
            <img src="https://cdn.jsdelivr.net/gh/zhangfeibiao/files@master/images/avatar.png">
        </div>

        <div class="m-search">
            <form class="m-search-form" method="get" action="/search" role="search">
                <input class="m-search-input" type="search" name="keyword" placeholder="搜索..." required>
            </form>
        </div>
        <#include "layouts/nav.ftl">
        <p class="m-footer">© ${.now?string("yyyy")} ${(user.nickname)!}</p>
    </div><!-- m-nav-center end -->
    <a href="#" class="cd-top"></a>
    <!-- m-cd-top start -->
    <button class="m-cd-top" title="Go to top">
        <i class="fa fa-chevron-up" aria-hidden="true"></i>
    </button>
    <!-- m-cd-top end -->
    <!-- search start -->
    <form class="js-search search-form search-form--modal" method="get" action="/search" role="search">
        <div class="search-form__inner">
            <div>
                <p class="micro mb-">输入后按回车搜索 ...</p>
                <i class="iconfont">&#xe65c;</i>
                <input class="text-input" type="search" name="keyword" placeholder="Search" required>
            </div>
        </div>
        <div class="search_close"></div>
    </form>
    <!-- search end -->
    <!-- aplayer start -->
    <#if settings.is_aplayer!false || settings.aplayer_float!false>
        <div id="aplayer-float" style="z-index: 100;" class="aplayer" data-global="true" data-id="${settings.aplayer_id!'2345868969'}" data-server="${settings.aplayer_server!'netease'}" data-type="${settings.aplayer_type!'playlist'}" data-fixed="true" data-preload="${settings.aplayer_preload!'none'}" data-order="${settings.aplayer_order!'list'}" data-theme="${settings.aplayer_theme!'orange'}" data-autoplay="${(settings.aplayer_autoplay!false)?string('true', 'false')}"></div>
    </#if>
    <!-- aplayer end -->
    <!-- theme-change start -->
    <#if settings.theme_change!true>
        <div class="changeSkin-gear no-select">
            <div class="keys">
        <span id="open-skinMenu">切换主题 | SCHEME TOOL &nbsp;
          <i class="iconfont icon-gear inline-block rotating"></i>
        </span>
            </div>
        </div>
        <div class="skin-menu no-select">
            <div class="theme-controls row-container">
                <ul class="menu-list">
                    <#list 0..7 as i>
                        <#assign iconStr="settings.bg_icon_${i}" icon = (iconStr?eval)?default("fa fa-television") />
                        <#assign descStr="settings.bg_desc_${i}" desc = (descStr?eval)?default("") />
                        <li id="bg_${i}" data-text="${desc}">
                            <i class="${icon}" aria-hidden="true" ></i>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
        <canvas id="night-mode-cover"></canvas>
    </#if>
    <!-- theme-change end -->
    <link type='text/css' rel=stylesheet href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" media=all />
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/jquery@1.11.0/dist/jquery.min.js'></script>
    <script type='text/javascript' src='${theme_base!}/js/jquery.pjax.min.js?ver=2.0.6.170420'></script>
    <script type='text/javascript' src='${theme_base!}/js/input.min.js?ver=2.0.6.170420'></script>
    <!-- 相册 -->
    <#if settings.photos_style == "justify">
        <script src="https://cdn.jsdelivr.net/npm/justifiedGallery@3.8.1/dist/js/jquery.justifiedGallery.min.js"></script>
    <#elseif settings.photos_style == "masonry" || settings.photos_style == "packery">
        <script src="https://cdn.jsdelivr.net/gh/metafizzy/isotope@3.0.6/dist/isotope.pkgd.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/imagesloaded@4.1.4/imagesloaded.pkgd.min.js"></script>
        <#if settings.photos_style == "packery">
            <script type='text/javascript' src='${theme_base!}/js/packery-mode.pkgd.min.js?ver=2.0.6.170420'></script>
        </#if>
    </#if>
    <script type='text/javascript'>
        /* <![CDATA[ */
        var Poi = {
            "pjax":"${(settings.poi_pjax!true)?string('true','')}",
            "windowheight":"${(!(settings.focus_height!true))?string('fixed','auto')}",
            "ajaxurl":"${blog_url!}",
            "formpostion":"bottom",
            "toc": "${(settings.post_toc!true)?string('true','')}",
            "codeLine": "${(settings.code_line!true)?string('true','')}",
            "themeChange": "${(settings.code_line!true)?string('true','')}",
            "headFocus": "${(settings.head_focus!true)?string('true','')}",
            "bgvideo": "${(settings.bgvideo!true)?string('true','')}",
            "tagRandomColorMin": "${settings.tag_randomColorMin!0.965}",
            "tagRandomColorMax": "${settings.tag_randomColorMax!0.969}",
            "nickname": "${user.nickname!}",
            "sitename": "${blog_title!}",
            "openToast": "${(settings.open_toast!true)?string('true','')}",
            "toastWidth": ${settings.toast_width!},
            "toastHeight": ${settings.toast_height!},
            "toastTop": "${settings.toast_top!}",
            "toastBackground": "${settings.theme_skin!}",
            "toastColor": "${settings.toast_color!}",
            "toastFontSize": ${settings.toast_font_size!},
            "copyMonitor": "${(settings.copy_monitor!true)?string('true','')}",
            "copyrightNotice": "${(settings.copyright_notice!true)?string('true','')}",
            "photosStyle": "${(settings.photos_style)!'justify'}",
            "photosGutter": ${(settings.photos_gutter)!10},
            "tocDepth": ${(settings.toc_depth)!0}
        };

        var bgConfig = {
            <#list 0..7 as i>
            <#assign name = (("settings.bg_name_" + i)?eval)?default(""),
                    desc = (("settings.bg_desc_" + i)?eval)?default(""),
                    url = (("settings.bg_url_" + i)?eval)?default(""),
                    strategy = (("settings.bg_img_strategy_" + i)?eval)?default(""),
                    isSkinSecter = (("settings.bg_skin_secter_" + i)?eval)?default(""),
                    isNight = (("settings.bg_night_" + i)?eval)?default(""),
                    isNightMode = (("settings.bg_night_mode_" + i)?eval)?default(""),
                    opacity = (("settings.bg_opacity_" + i)?eval)?default("1") />

            "bg_${i}": {
                "name": "${name}",
                "desc": "${desc}",
                "url": "${url}",
                "strategy": "${strategy}",
                "isSkinSecter": "${(isSkinSecter!false)?string('true', '')}",
                "isNight": "${(isNight!true)?string('true', '')}",
                "isNightMode": "${(isNightMode!true)?string('true', '')}",
                "opacity": "${opacity}"

            },
            </#list>
        };
        /* ]]> */
    </script>

    <script type="text/javascript" src="${theme_base!}/plugins/highlight/js/highlight.pack.js"></script>
    <#if settings.code_line!true>
        <script type="text/javascript" src="${theme_base!}/plugins/highlight/js/highlightjs-line-numbers.min.js"></script>
    </#if>
    <#if settings.is_aplayer!false>
        <script src="https://cdn.jsdelivr.net/npm/aplayer@1.10.1/dist/APlayer.min.js"></script>
        <script src="${theme_base!}/plugins/aplayer/js/index.js"></script>
    </#if>
    <#if settings.post_toc!true>
        <script src="https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.2/js/tocbot/4.11.1/js/tocbot.min.js"></script>
    </#if>
    <script src="//cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script src="${settings.comment_mode!'//cdn.jsdelivr.net/gh/LIlGG/halo-comment-sakura@v1.3.1/dist/halo-comment.min.js'}"></script>
    <script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.6/dist/clipboard.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/lazyload@2.0.0-rc.2/lazyload.min.js"></script>
    <#if settings.tag_cloud!true>
        <script src="https://cdn.jsdelivr.net/npm/jqcloud2@2.0.3/dist/jqcloud.min.js"></script>
        <script type='text/javascript'>
            var wordcloud = [
                <@tagTag method="list">
                <#list tags as tag>
                {'text': '${tag.name!}', 'weight': '${tag.postCount!}', 'link': '${tag.fullPath!}'},
                </#list>
                </@tagTag>
            ]
        </script>
    </#if>
    <#if settings.category_radar!true>
        <script src="https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.5/js/echarts/echarts.min.js"></script>
        <script type='text/javascript'>
            var categoryRadar = {
                <@categoryTag method="list">
                <#list categories as category>
                '${category.name!}': '${category.postCount!}',
                </#list>
                </@categoryTag>
            }
        </script>
    </#if>
    <style>
        .site-info {
            text-align: center;
            letter-spacing: 2px;
            color: #b9b9b9;
        }
        .site-footer {
            padding-bottom: 40px;
            text-align: center;
        }
        .site-footer p {
            line-height: 1.4rem;
            margin: 10px 0 20px 0;
        }
        .footer-badge {
            display: inline-block;
            border-radius: 4px;
            text-shadow: none;
            font-size: 12px;
            color: #fff;
            line-height: 15px;
            background-color: #abbac3;
            margin-bottom: 5px;
        }
        .footer-badge .bg-red {
            background-color: #e05d44!important;
        }
        .footer-badge .badge-value {
            display: inline-block;
            padding: 4px 6px 4px 4px;
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }
        .footer-badge .bg-blue {
            background-color: #007ec6!important;
        }
        .footer-badge .bg-orange {
            background-color: orange!important;
        }
        .footer-badge .bg-brightgreen {
            background-color: #4dc820!important;
        }
        .footer-badge .badge-subject {
            display: inline-block;
            background-color: #4d4d4d;
            padding: 4px 4px 4px 6px;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }
        .footer-badge .bg-blueviolet {
            background-color: #8833d7!important;
        }
      	.footer-badge .statistics {
            display: inline-block;
            background-color: #41A5F5;
            color: #fff;
            padding: 4px 4px 4px 6px;
            font-family: arial;
            font-size: 10px;
            font-weight: bold;
            border-radius: 4px;
       }
    </style>
    <script>function show_date_time(){if($("#span_dt_dt").length>0){window.setTimeout("show_date_time()",1000);BirthDay=new Date("11/25/2017 12:00:00");today=new Date();timeold=(today.getTime()-BirthDay.getTime());sectimeold=timeold/1000;secondsold=Math.floor(sectimeold);msPerDay=24*60*60*1000;e_daysold=timeold/msPerDay;daysold=Math.floor(e_daysold);e_hrsold=(e_daysold-daysold)*24;hrsold=Math.floor(e_hrsold);e_minsold=(e_hrsold-hrsold)*60;minsold=Math.floor((e_hrsold-hrsold)*60);seconds=Math.floor((e_minsold-minsold)*60);span_dt_dt.innerHTML=daysold+"天";}}show_date_time();</script>
    <script type='text/javascript' src='${theme_base!}/js/qrcode.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
    <script type='text/javascript' src='${theme_base!}/js/app.min.js?ver=2.0.6.170420'></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.5.0/css/all.min.css" rel=stylesheet>
    <script src='https://cdn.jsdelivr.net/gh/Sanarous/files@1.30.2/js/Valine.min.js'></script>
    <script>

    </script>
    <style>
        .fa{
            font-weight: 900;
        }
        .comment-headling {
            display: inline-block;
            vertical-align: middle;
            font-weight: 700;
            font-size: 23px;
            margin-bottom: 1rem;
        }
        #veditor {
            background-image: url(https://cdn.jsdelivr.net/gh/drew233/cdn/20200409110727.webp);
            background-size: contain;
            background-repeat: no-repeat;
            background-position: right;
            background-color: rgba(255, 255, 255, 0);
            resize: vertical
        }
        #veditor:focus{
            background-position-y: 200px;
            transition: all 0.2s ease-in-out 0s;
        }
        #vcomments .vheader .vnick {
            width: 31%;
            border-bottom: 1px dashed #dedede;
        }
        #vcomments .vheader .vnick:focus {
            border-bottom: 1px dashed #ce5151 ;
        }
        #vcomments .vheader .vmail {
            width: 31%;
            border-bottom: 1px dashed #dedede;
        }
        #vcomments .vheader .vmail:focus {
            border-bottom: 1px dashed #ce5151 ;
        }

        #vcomments .vheader .vlink {
            width: 31%;
            border-bottom: 1px dashed #dedede;
        }
        #vcomments .vheader .vlink:focus {
            border-bottom: 1px dashed #ce5151 ;
        }
        img.vimg {
            transition: all 1s   /* 旋转时间为 1s */
        }

        img.vimg:hover {
            transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            -moz-transform: rotate(360deg);
            -o-transform: rotate(360deg);
            -ms-transform: rotate(360deg);
        }
        #vcomments .vcards .vcard {
            padding: 15px 20px 0 20px;
            border-radius: 10px;
            margin-bottom: 15px;
            box-shadow: 0 0 4px 1px rgba(0, 0, 0, .12);
            transition: all .3s
        }

        #vcomments .vcards .vcard:hover {
            box-shadow: 0 0 8px 3px rgba(0, 0, 0, .12)
        }

        #vcomments .vcards .vcard .vh .vcard {
            border: none;
            box-shadow: none;
        }

        @media screen and (max-width:520px){#vcomments .vheader .vnick{width:100%}}
        @media screen and (max-width:520px){#vcomments .vheader .vmail{width:100%}}
        @media screen and (max-width:520px){#vcomments .vheader .vlink{width:100%}}

    </style>

    <#nested />
    <#if settings.live2d_switch!true>
        <script src="https://cdn.bootcdn.net/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <#include "plugins/live2d/ftl/live2d.ftl">
        <@live2d/>
    </#if>
    <div class="site-statistics">
        <@global.statistics />
    </div>
    </body>
    </html>
</#macro>