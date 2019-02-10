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
					<#if 0 != recentComments?size>
					<#list articles as article>
					<div class="post">
						<h2 class="post-tltle shortline">
							<a href="${servePath}${article.articlePermalink}" title="${article.articleTitle}">
								${article.articleTitle}
							</a>
						</h2>
						<div class="postmetadata-top">
							<span class="post-date">
							        <#if article.hasUpdated>
								${article.articleUpdateDate?string("yyyy-MM-dd HH:mm:ss")}
								<#else>
								${article.articleCreateDate?string("yyyy-MM-dd HH:mm:ss")}
								</#if>
							</span>
							<a href="${servePath}/authors/${article.authorId}" title="${authorLabel}">
								<span class="post-author">
									${article.authorName}
								</span>
							</a>
							<a href="${servePath}${article.articlePermalink}" title="${viewLabel}">
								<span class="post-views">
										${article.articleViewCount}
								</span>
							</a>
							<a href="${servePath}${article.articlePermalink}#comments" title="${commentLabel}">
								<span class="post-comments">
									${article.articleCommentCount}
								</span>
							</a>
						</div>
						<div class="entry breakline">
							${article.articleAbstract}
						</div>
						<div class="postmetadata">
							<!--
							<span class="post-cat">#</span>-->
							<span class="post-tag" title="${tagLabel}">
								<#list article.articleTags?split(",") as articleTag>
								<span>
									<a href="${servePath}/tags/${articleTag?url('UTF-8')}">
										${articleTag}</a><#if articleTag_has_next>,</#if>
								</span>
								</#list>
							</span>
						</div>
					</div>
					</#list>
					<#if 0 != paginationPageCount>
					<div class="navigation">
						<div id="pagenavi">
							<#if 1 != paginationPageNums?first>
							<a href="${servePath}${path}">${firstPageLabel}</a>
							<a id="previousPage" href="${servePath}${path}?p=${paginationPreviousPageNum}">${previousPageLabel}</a>
							</#if>
							<#list paginationPageNums as paginationPageNum>
							<#if paginationPageNum == paginationCurrentPageNum>
							<span>${paginationPageNum}</span>
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
					</div>
					</#if>
					<#else>
					<h2 class="center">${noArticleTitleLabel}</h2>
					<p class="center">${noArticleContentLabel}</p>
					</#if>