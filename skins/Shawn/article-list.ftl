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
<div class="post">
    <div class="index">
        <h3>
            <a <#if article.hasUpdated || article_index==0> 
                style="background: url('${staticServePath}/skins/Shawn/images/starnew.png') no-repeat scroll 0% 0% transparent;" <#else>
                style="background: url('${staticServePath}/skins/Shawn/images/star.png') no-repeat scroll 0% 0% transparent;"
                </#if> 
                href="${article.articlePermalink}" 
                rel="bookmark" 
                title="${article.articleTitle}">
                ${article.articleTitle}
            </a>
			<#if article.articlePutTop>
			<sup class="tip">
				${topArticleLabel}
			</sup>
			</#if>
        </h3>
        <div class="entry">
            ${article.articleAbstract}
        </div>
        <div class="timeta" style="opacity: 0.7;height:22px;">
            <a href="${article.articlePermalink}#comments">${article.articleCommentCount}&nbsp;&nbsp;comments</a>/${article.articleViewCount}&nbsp;&nbsp;Hits
            /<br />
            <#if article.hasUpdated>
            ${article.articleUpdateDate?string("yyyy/MM/dd HH:mm:ss")}
            <#else>
            ${article.articleCreateDate?string("yyyy/MM/dd HH:mm:ss")}
            </#if>
        </div>
    </div>
</div>
</#list>
<#if 0 != paginationPageCount>
<div class="navigation">
    <div class="index">
        <div class="wp-pagenavi">
            <span class="pages">${paginationCurrentPageNum}/${paginationPageCount}</span>
            <#if 1 != paginationPageNums?first>
            <a href="${staticServePath}${path}">1st</a>
            <a href="${staticServePath}${path}?p=${paginationPreviousPageNum}">${TitelNO1}</a>
            </#if>
            <#list paginationPageNums as paginationPageNum>
            <#if paginationPageNum == paginationCurrentPageNum>
            <span class="current">${paginationPageNum}</span>
            <#else>
            <a title="${paginationPageNum}" href="${staticServePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a>
            </#if>
            </#list>
            <#if paginationPageNums?last != paginationPageCount>
            <a href="${staticServePath}${path}?p=${paginationNextPageNum}">${TitelNO}</a>
            <a title="Last ${TitelNO}" href="${staticServePath}${path}?p=${paginationPageCount}">Last ${TitelNO}</a>
            </#if>
        </div>
    </div>
</div>
<#else>
<h3>Page not found</h3>
<p>Sorry, but you are looking for something that isn\'t here.</p>
</#if>