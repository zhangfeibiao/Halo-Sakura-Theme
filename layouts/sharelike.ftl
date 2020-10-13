<#--
	分享/点赞页 
	实际上我感觉原版的分享风格更好看，因此保留原版的
	简单起见，这里暂时不封装
-->
<#--<#if settings.post_like!true>-->
<#--<div class="post-like">-->
<#--<a href="javascript:;" data-action="ding" data-id="${post.id?c}" class="specsZan">-->
<#--	<i class="iconfont">&#xe669;</i> <span class="count">-->
<#--		${post.likes?c}-->
<#--	</a>-->
<#--</div>-->
<#--</#if>-->
<style>
.s-wechat .wechat-qrcode {
	display: none;
	border: 1px solid #eee;
	position: absolute;
	z-index: 999;
	top: -205px;
	left: -84px;
	width: 200px;
	height: 192px;
	color: #666;
	font-size: 12px;
	text-align: center;
	background-color: #fff;
	box-shadow: 0 2px 10px #aaa;
	transition: all 200ms;
	-webkit-tansition: all 350ms;
	-moz-transition: all 350ms
}

.s-wechat .wechat-qrcode.bottom {
	top: 40px;
	left: -84px
}

.s-wechat .wechat-qrcode.bottom:after {
	display: none
}

.s-wechat .wechat-qrcode h4 {
	font-weight: normal;
	height: 26px;
	line-height: 26px;
	font-size: 12px;
	background-color: #f3f3f3;
	margin: 0;
	padding: 0;
	color: #777
}

.s-wechat .wechat-qrcode .qrcode {
	width: 105px;
	margin: 10px auto
}

.s-wechat .qrcode table {
	margin: 0 !important
}

.s-wechat .wechat-qrcode .help p {
	font-weight: normal;
	line-height: 16px;
	padding: 0;
	margin: 0
}

.s-wechat .wechat-qrcode:after {
	content: '';
	position: absolute;
	left: 50%;
	margin-left: -6px;
	bottom: -13px;
	width: 0;
	height: 0;
	border-width: 8px 6px 6px 6px;
	border-style: solid;
	border-color: #fff transparent transparent transparent
}

.s-wechat:hover .wechat-qrcode {
	display: block
}

.s-wechat .wechat-qrcode img {
	width: auto;
	height: auto;
}
</style>
<#if settings.post_share!true>
<div class="post-share">
	<ul class="social-share sharehidden">
		<li>
			<a href="http://service.weibo.com/share/share.php?url=${post.fullPath!}&appkey=&title=${post.title!}|${user.nickname!}&pic=${post.thumbnail!}" onclick="window.open(this.href, 'weibo-share', 'width=490,height=700');return false;" class="s-weibo">
				<img src="${theme_base!}/images/sns/weibo.png"/>
			</a>
		</li>
		<li>
			<a href="http://connect.qq.com/widget/shareqq/index.html?url=${post.fullPath!}&title=${post.title!}|${user.nickname!}&source=${post.title!}|${user.nickname!}&desc=${post.summary!}&pics=${post.thumbnail!}&summary=${post.summary!}" onclick="window.open(this.href, 'qq-share', 'width=730,height=500');return false;" class="s-qq">
				<img src="${theme_base!}/images/sns/qq.png"/>
			</a>
		</li>
		<li>
			<a href="javascript:" class="s-wechat">
				<div class="wechat-qrcode">
					<h4>微信扫一扫：分享</h4>
					<div id="qrcode" class="qrcode" title="${post.fullPath!}" data-url="${post.fullPath!}"></div>
					<div class="help">
						<p>微信里点“发现”，扫一下</p>
						<p>二维码便可将本文分享至朋友圈。</p>
					</div>
				</div>
				<img src="${theme_base!}/images/sns/wechat.png"/>
			</a>
		</li>
		<li>
			<a href="http://shuo.douban.com/!service/share?href=${post.fullPath!}&name=${post.title!}|${user.nickname!}&text=${post.summary!}&image=${post.thumbnail!}&starid=0&aid=0&style=11" onclick="window.open(this.href, 'douban-share', 'width=490,height=600');return false;" class="s-douban">
				<img src="${theme_base!}/images/sns/douban.png"/>
			</a>
		</li>
		<li>
			<a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=${post.fullPath!}&title=${post.title!}|${user.nickname!}&desc=${post.summary!}&summary=${post.summary!}&site=${post.summary!}" onclick="window.open(this.href, 'qzone-share', 'width=490,height=600');return false;" class="s-qzone">
				<img src="${theme_base!}/images/sns/qzone.png"/>
			</a>
		</li>
		<li>
			<a href="http://www.linkedin.com/shareArticle?mini=true&ro=true&title=${post.title!}|${user.nickname!}&url=${post.fullPath!}&summary=${post.summary!}&source=${post.thumbnail!}&armin=armin" onclick="window.open(this.href, 'linkedin-share', 'width=490,height=600');return false;" class="s-linkedin">
				<img src="${theme_base!}/images/sns/linkedin.png"/>
			</a>
		</li>
	</ul>
	<i class="iconfont show-share">&#xe6eb;</i>
</div>
</#if>