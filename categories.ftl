<#--
/**
 * 主题的分类目录，用来展示所有的标签，需要手动在菜单中添加
 * 菜单链接如下： https://{youraddress}/categories
 * @author LIlGG
 */
-->
<#include "header.ftl">
<@header title="${options.categories_title?default('文章分类')} - ${blog_title!}">
    <#if (settings.patternimg!true) && (settings.category_patternimg?? && settings.category_patternimg!='')>
        <div class="pattern-center-blank"></div>
        <div class="pattern-center">
            <div class="pattern-attachment-img">
                <img data-src="${settings.category_patternimg!}" src="https://cdn.jsdelivr.net/gh/LIlGG/cdn@1.0.2/img/svg/loader/orange.progress-bar-stripe-loader.svg"  class="lazyload" onerror="imgError(this, IMG_Type.DEFAULT)">
            </div>
            <header class="pattern-header">
                <h1 class="entry-title">${options.categories_title?default('文章分类')}</h1>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
        <header class="entry-header">
            <h1 class="entry-title">${options.categories_title?default('文章分类')}</h1>
        </header><!-- .entry-header -->
    </#if>
</@header>
<div class="tag-contents">
    <div id="tags" class="container chip-container" style="margin-top: 0px;">
        <div class="card">
            <div class="card-content">
                <div class="tag-title center-align">
                    <i class="fa fa-bookmark"></i>&nbsp;&nbsp;文章分类
                </div>
                <div class="tag-chips">
                <@categoryTag method="list">
                <#list categories as category>
                <a href="${category.fullPath!}" title="${category.name!}: ${category.postCount!}">
                    <span class="chip center-align waves-effect waves-light chip-default" data-tagname="${category.name!}">${category.name!}
                        <span class="tag-length">${category.postCount!}</span>
                    </span>
                </a>
                </#list>
                </@categoryTag>
                </div>
            </div>
        </div>
    </div>
</div>
<#if settings.category_radar!true>
<style type="text/css">
    .tag-contents {
        margin-top: 14px;
    }
    #category-echarts {
        width: 100%;
        height: 360px;
    }
</style>
<div class="tag-contents category-show">
    <div class="card">
        <div id="category-echarts"></div>
    </div>
</div>
</#if>
<#include "footer.ftl">
<@footer>
</@footer>
