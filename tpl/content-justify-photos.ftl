<section>
    <#if !(settings.patternimg!true) || !(settings.photos_patternimg?? && settings.photos_patternimg!='')>
    <header class="entry-header">
        <h1 class="entry-title">${options.photos_title?default('图库')}</h1>
    </header><!-- .entry-header -->
    </#if>
    <div  class="wrapper justify-wrapper">
        <nav id="gallery-filter">
            <ul>
                <li>
                    <a href="javascript:void(0);" data-filter="*" class="active">全部</a>
                </li>
                <@photoTag method="listTeams">
                <#list teams as item>
                <li>
                    <a href="javascript:void(0);" data-filter=".${((item.team)?length>0)?string((item.team),'默认')}">${((item.team)?length>0)?string((item.team),'默认')}</a>
                </li>
                </#list>
                </@photoTag>
            </ul>
        </nav>
        <div class="gallery masonry-gallery">
            <@photoTag method="list">
            <#list photos as photo>
            <div class="gallery-item justify-gallery-item ${((photo.team)?length>0)?string((photo.team),'默认')}">
                <a data-fancybox="gallery" href="${photo.url!}">
                    <#if settings.is_thumbnail!true>
                    <img src="${photo.thumbnail!}"/>
                    <#else>
                    <img src="${photo.url!}"/>
                    </#if>
                </a>
                <figcaption class="justify-caption gallery-caption">
                    <div class="entry-summary">
                        <h3>${photo.name}</h3>
                        <#if photo.description??>
                        <p>${photo.description}</p>
                        </#if>
                    </div>
                </figcaption>
            </div>
            </#list>
            </@photoTag>
        </div>
    </div>
</section>