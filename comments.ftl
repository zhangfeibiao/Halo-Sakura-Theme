<#--
	COMMENTS TEMPLATE
-->
<#macro comment target,type>
	<script>
	var configs = {
    	autoLoad: true,
    	showUserAgent: true,
		loadingStyle: "balls"
	}
	</script>
	<#if !target.disallowComment!false>
		<section id="comments" class="comments">
			<div class=comment-headling><i class="fa fa-comments fa-fw"></i><span class=comment-title-count>评论</span></div>
			<div class="comments-main">
				<div id="vcomments"></div>
			</div>

		</section>
      </#if>
      <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.5.0/css/all.min.css" rel=stylesheet>
    <script src='https://cdn.jsdelivr.net/gh/Sanarous/files@1.30.2/js/Valine.min.js'></script>
      <script>
       new Valine({
            el: '#vcomments',
            appId: 'MQQfbMkClnC2GUrrgCjXfVgF-gzGzoHsz',
            appKey: 'z6nAuDg2VgmLnYHvvW3Oq586',
            placeholder: "填写邮箱可以及时收到回复哦(●'◡'●)",
            master: 'dadf3a473d8fe1f3faf80fb91c7ae0a4',   //博主邮箱md5
            tagMeta: ["博主","小伙伴","访客"],     //标识字段名
            friends:  ["fe01ce2a7fbac8fafaed7c982a04e229","fe01ce2a7fbac8fafaed7c982a04e229"],  //小伙伴邮箱Md5
            metaPlaceholder: {"nick":"昵称/QQ号（必填）","mail":"邮箱（必填，完全保密）"},
            enableQQ: true,
         	avatar:'monsterid',
         	requiredFields:['nick','mail'],
         	recordIP:true,path:window.location.pathname
        });
        //可以与 valine 的配置 js 文件放一起，或放置到公共 js 文件中
        $("#veditor").focus(function(){$(this).css("background-image","none");});
        $("#veditor").blur(function(){
            $(this).css("background-image","url(https://cdn.jsdelivr.net/gh/drew233/cdn/20200409110727.webp)");
        });
      </script>
	
</#macro>