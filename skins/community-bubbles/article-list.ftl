<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2019, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#assign leftId=users[0].oId />
<#assign rightId=users[1].oId/>
<#list articles as article>
<div class="marginBottom40">
	<#if article.authorId!=rightId && article.authorId!=leftId>	
			 <div class="article-main" style="width:100%;border:5px solid brown">
			 <div class="article-header">
				<h3><span class="left">
                    by&nbsp;
                </span>
                <a rel="nofollow" class="left" title="${article.authorName}" href="${servePath}/authors/${article.authorId}">
                    ${article.authorName}
                </a>
				<span>&nbsp;&nbsp;</span>
				<span>
            <#if article.hasUpdated>
            ${article.articleUpdateDate?string("yyyy-MM-dd HH:mm")}
            <#else>
            ${article.articleCreateDate?string("yyyy-MM-dd HH:mm")}
            </#if>
        </span><span>&nbsp;&nbsp;</span>
		<span>(<a rel="nofollow" title="${commentLabel}" href="${servePath}${article.articlePermalink}#comments">
                   ${article.articleCommentCount}
                </a>/<a rel="nofollow" href="${servePath}${article.articlePermalink}" title="${viewLabel}">
                    ${article.articleViewCount}
                </a>)</span></h3>
			 </div>
			 
		<div class="clear" style="display:block;"></div>
				<h2 class="title">
					<a rel="bookmark" class="no-underline" href="${servePath}${article.articlePermalink}">
						${article.articleTitle}
					</a>
					<#if article.hasUpdated>
						<sup class="red">
							${updatedLabel}
						</sup>
					</#if>
					<#if article.articlePutTop>
						<sup class="red">
							${topArticleLabel}
						</sup>
					</#if>
				</h2>
				<div class="article-body">
					${article.articleAbstract}
				</div>
				<div class="read-more">
					<a href="${servePath}${article.articlePermalink}">
						<span class="left">${readmore2Label}</span>
						<span class="read-more-icon"></span>
						<span class="clear"></span>
					</a>
					<div class="clear"></div>
				</div>
			</div>
		
		
	<#else>
	<#if article.authorId==rightId>
	<div class="article-header minwidth20per" style="float:right;">
	<#elseif article.authorId==leftId>
    <div class="article-header minwidth20per">
	</#if>
		<div class="clear"></div>
        <div class="article-date">
            <#if article.hasUpdated>
            ${article.articleUpdateDate?string("yyyy-MM-dd HH:mm")}
            <#else>
            ${article.articleCreateDate?string("yyyy-MM-dd HH:mm")}
            </#if>
        </div>
		<!--
        <div class="arrow-right"></div>
		-->
        <div class="clear"></div>
		<div>
			<img width="160px" height="160px" src="${staticServePath}/images/default-user-thumbnail.png" onload="this.onload=null;this.src=getIcon('${article.articleAuthorEmail}')+'&d=404';" onerror="this.src='${staticServePath}/images/default-user-thumbnail.png';"> 
		</div>
		<div class="clear"></div>
        <ul>
            <li>
                <span class="left">
                    by&nbsp;
                </span>
                <a rel="nofollow" class="left" title="${article.authorName}" href="${servePath}/authors/${article.authorId}">
                    ${article.authorName}
                </a>
                <span class="clear"></span>
            </li>
            <li>
                <a rel="nofollow" href="${servePath}${article.articlePermalink}" title="${viewLabel}">
                    ${viewLabel} (${article.articleViewCount})
                </a>
            </li>
            <li>
                <a rel="nofollow" title="${commentLabel}" href="${servePath}${article.articlePermalink}#comments">
                    ${commentLabel} (${article.articleCommentCount})
                </a>
            </li>
        </ul>
    </div>
	<#if article.authorId==rightId>
		<div class="triangle-border right minwidth70per" style="border-color:pink;">
		<div class="article-main article-main-right">
	<#elseif article.authorId==leftId>
		<div class="triangle-border left minwidth70per">
		<div class="article-main">
	</#if>	 
        <h2 class="title">
            <a rel="bookmark" class="no-underline" href="${servePath}${article.articlePermalink}">
                ${article.articleTitle}
            </a>
            <#if article.hasUpdated>
            <sup class="red">
                ${updatedLabel}
            </sup>
            </#if>
            <#if article.articlePutTop>
            <sup class="red">
                ${topArticleLabel}
            </sup>
            </#if>
        </h2>
        <div class="article-body">
            ${article.articleAbstract}
        </div>
        <div class="read-more">
            <a href="${servePath}${article.articlePermalink}">
                <span class="left">${readmore2Label}</span>
                <span class="read-more-icon"></span>
                <span class="clear"></span>
            </a>
            <div class="clear"></div>
        </div>
		</div>
    </div>
	<!--
    <div class="article-footer">
        <h3>${tagsLabel}</h3>
        <ul>
            <#list article.articleTags?split(",") as articleTag>
            <li>
                <a rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                    ${articleTag}
                </a>
            </li>
            </#list>
            <li>
                <a href="${servePath}${article.articlePermalink}">
                    ${createDateLabel}:${article.articleCreateDate?string("yyyy-MM-dd HH:mm")}
                </a>
            </li>
        </ul>
    </div>
	-->
	</#if>
    <div class="clear"></div>
</div>
</#list>
<#if 0 != paginationPageCount>
<div class="pagination">
    <#if 1 != paginationPageNums?first>
    <a href="${servePath}${path}">${firstPageLabel}</a>
    <a id="previousPage" href="${servePath}${path}?p=${paginationPreviousPageNum}">${previousPageLabel}</a>
    </#if>
    <#list paginationPageNums as paginationPageNum>
    <#if paginationPageNum == paginationCurrentPageNum>
    <a href="${servePath}${path}?p=${paginationPageNum}" class="selected">${paginationPageNum}</a>
    <#else>
    <a href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
    </#if>
    </#list>
    <#if paginationPageNums?last != paginationPageCount>
    <a id="nextPage" href="${servePath}${path}?p=${paginationNextPageNum}">${nextPagePabel}</a>
    <a href="${servePath}${path}?p=${paginationPageCount}">${lastPageLabel}</a>
    </#if>
    &nbsp;&nbsp;${sumLabel} ${paginationPageCount} ${pageLabel}
</div>
</#if>