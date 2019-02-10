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
<div class="page-header page-header-m">
    <h3><a href="${article.articlePermalink}">${article.articleTitle}</a></h3>
</div>
<div class="page-header-bottom">
    <span>
        <li class="icon-time"></li>
        <#if article.hasUpdated>
        ${article.articleUpdateDate?string("yyyy-MM-dd HH:mm")}
        <#else>
        ${article.articleCreateDate?string("yyyy-MM-dd HH:mm")}
        </#if>
    </span>
    <span>
        <li class="icon-user"></li>
        <a href="/authors/${article.authorId}" title="${authorLabel}: ${article.authorName}">
            ${article.authorName}
        </a>
    </span>
    <div class="pull-right">
        <span>
            <li class="icon-eye-open"></li>
            <a href="${article.articlePermalink}">${article.articleViewCount} ${viewLabel}</a>
        </span>
        <span>
            <li class="icon-comment"></li>
            <a href="${article.articlePermalink}#comments">${article.articleCommentCount} ${commentLabel}</a>
        </span>
    </div>
</div>
${article.articleAbstract}
<div class="article-tags">
    <li class="icon-tags"></li>${tag1Label}
    <#list article.articleTags?split(",") as articleTag>
        <span>
            <a href="${servePath}/tags/${articleTag?url('UTF-8')}">
            ${articleTag}
            </a>
            <#if articleTag_has_next>,</#if>
        </span>
    </#list>
</div>
</#list>
<#if paginationCurrentPageNum != paginationPageCount && 0 != paginationPageCount>
<div class="btn btn-block pagination-btn" onclick="getNextPage()" data-page="${paginationCurrentPageNum}">${moreLabel}</div>
</#if>