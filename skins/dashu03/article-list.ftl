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
<ul class="unstyled">
    <#list articles as article>
    <li class="article<#if !article_has_next> article-last</#if>" style="margin-top:50px;">
        <div class="article-title">
            <h2>
                <a rel="bookmark" class="ft-gray" href="${servePath}${article.articlePermalink}">
                    ${article.articleTitle}
                </a>
                <#if article.hasUpdated>
                <sup>
                    ${updatedLabel}
                </sup>
                </#if>
                <#if article.articlePutTop>
                <sup>
                    ${topArticleLabel}
                </sup>
                </#if>
            </h2>
            <div class="right">
                <a rel="nofollow" class="ft-gray" href="${servePath}${article.articlePermalink}#comments">
                    ${article.articleCommentCount}&nbsp;&nbsp;${commentLabel}
                </a>&nbsp;&nbsp;
                <a rel="nofollow" class="ft-gray" href="${servePath}${article.articlePermalink}">
                    ${article.articleViewCount}&nbsp;&nbsp;${viewLabel}
                </a>
            </div>
            <div class="clear"></div>
        </div>
        <div class="article-body">
            <div id="abstract${article.oId}">
                ${article.articleAbstract}
            </div>
            <div id="content${article.oId}" class="none"></div>
        </div>
        <div class="right ft-gray">
            <#if article.hasUpdated>
            ${article.articleUpdateDate?string("yy-MM-dd HH:mm")}
            <#else>
            ${article.articleCreateDate?string("yy-MM-dd HH:mm")}
            </#if>
            <a rel="nofollow" href="${servePath}/authors/${article.authorId}">${article.authorName}</a>
        </div>
        <div class="left ft-gray">
            ${tag1Label}
            <#list article.articleTags?split(",") as articleTag>
            <a rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                ${articleTag}</a><#if articleTag_has_next>, </#if>
            </#list>
        </div>
        <div class="clear"></div>
    </li>
    </#list>
</ul>
<#if 0 != paginationPageCount>
    <div class="">
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