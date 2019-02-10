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
<#list articles as article>
		<div  id="post">
			<h2 class="post_title_h2">
				<a href="${article.articlePermalink}">${article.articleTitle}</a>
		        <#if article.hasUpdated>
		        <sup class="tip">
		            ${updatedLabel}
		        </sup>
		        </#if>
		        <#if article.articlePutTop>
		        <sup class="tip">
		            ${topArticleLabel}
		        </sup>
		        </#if>
			</h2>
			<div class="post_info_top">
				<div class="post_info_date">
					<a href="${article.articlePermalink}" title="${dateLabel}" rel="bookmark">Posted&nbsp;&nbsp;on&nbsp;&nbsp; 
			            <#if article.hasUpdated>
			            ${article.articleUpdateDate?string("yyyy-MM-dd HH:mm:ss")}
			            <#else>
			            ${article.articleCreateDate?string("yyyy-MM-dd HH:mm:ss")}
			            </#if>
					</a>
				</div>
				<div class="post_info_author">&nbsp;&nbsp;by&nbsp;&nbsp;
					<a href="/authors/${article.authorId}" title="Posts&nbsp;&nbsp;by&nbsp;&nbsp;${article.authorName}" rel="author" style="opacity: 1; ">${article.authorName}</a>
				</div>
			</div>
			<div class="post_content">
				${article.articleAbstract}
			</div>
		</div>
		<div class="post_info_bootom">
			<div class="post_meta">
				<ul>
					<#list article.articleTags?split(",") as articleTag>
						<li><a href="${staticServePath}/tags/${articleTag?url('UTF-8')}" rel="tag">${articleTag}</a><#if articleTag_has_next></#if></li>
					</#list>
				</ul>
			</div>  
			<div class="post_readmore">
				<a href="${article.articlePermalink}#comments" title="Comment&nbsp;&nbsp;on&nbsp;&nbsp;">${article.articleCommentCount}&nbsp;&nbsp;${commentLabel}
        		</a>
			</div>	
		</div>
</#list>
<#if 0 != paginationPageCount>
	<div class="page_navi">
	<ul class="page-numbers">
            <#if 1 != paginationPageNums?first>
            <li><a href="${staticServePath}" title="${nextPagePabel}">${firstPageLabel}</a>
            <a href="${staticServePath}${path}?p=${paginationPreviousPageNum}" title="${previousPageLabel}"><<</a></li>
            </#if>
            <#list paginationPageNums as paginationPageNum>
            <#if paginationPageNum == paginationCurrentPageNum>
            <li><span class="current">${paginationPageNum}</span></li>
            <#else>
            <li><a title="${paginationPageNum}" href="${staticServePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a></li>
            </#if>
            </#list>
            <#if paginationPageNums?last != paginationPageCount>
            <li><a href="${staticServePath}${path}?p=${paginationNextPageNum}" title="${nextPagePabel}">>></a>
            <a href="${staticServePath}${path}?p=${paginationPageCount}" title="${lastPageLabel}">${lastPageLabel}</a></li>
            </#if>
            &nbsp;&nbsp;${sumLabel} ${paginationPageCount} ${pageLabel}
	</ul>
	</div>
</#if>