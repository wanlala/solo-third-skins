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
<div  class="article cl">
    <h2 class="entry-title"><a href="${servePath}${article.articlePermalink}">${article.articleTitle}</a>
        <!--<#if article.hasUpdated>               
${updatedLabel}               
</#if>
         <#if article.articlePutTop>
<sup>
${topArticleLabel}
</sup>
</#if>-->
    </h2>	
    <div class="abstract">
        ${article.articleAbstract}     
    </div>

    <p class="entry-meta">
        <#if article.hasUpdated>
        ${article.articleUpdateDate?string("yy-MM-dd HH:mm")}
        <#else>
        ${article.articleCreateDate?string("yy-MM-dd HH:mm")}
        </#if>
        &nbsp;&nbsp;&nbsp;${article.authorName}&nbsp;&nbsp;&nbsp;
        <a  href="${servePath}${article.articlePermalink}#comments">
            ${article.articleCommentCount}&nbsp;&nbsp;${commentLabel}
        </a>&nbsp;&nbsp;&nbsp;
        <a rel="nofollow" class="ft-gray" href="${servePath}${article.articlePermalink}">
            ${article.articleViewCount}&nbsp;&nbsp;${viewLabel}
        </a>&nbsp;&nbsp;&nbsp;
        ${tag1Label}
        <#list article.articleTags?split(",") as articleTag>
        <a  href="${servePath}/tags/${articleTag?url('UTF-8')}">
            ${articleTag}</a><#if articleTag_has_next>, </#if>
        </#list>

        &nbsp;&nbsp;&nbsp;
        <a class="y" href="${servePath}${article.articlePermalink}">More...</a>
    </p>
</div>					 
</#list> 
<#if 0 != paginationPageCount>
<ol class="page-navigator">
    <#if 1 != paginationPageNums?first>
    <li><a id="previousPage" href="${servePath}${path}?p=${paginationPreviousPageNum}"
           title="${previousPageLabel}"><</a></li>
    </#if>
    <#list paginationPageNums as paginationPageNum>
    <#if paginationPageNum == paginationCurrentPageNum>
    <li class="current"><a href="#">${paginationPageNum}</a></li>
    <#else>
    <li><a href="${servePath}${path}?p=${paginationPageNum}">${paginationPageNum}</a></li>
    </#if>
    </#list>
    <#if paginationPageNums?last != paginationPageCount>
    <li><a id="nextPage" href="${servePath}${path}?p=${paginationNextPageNum}" title="${nextPagePabel}">></a></li>
    </#if>
</ol>	
</#if>