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
		<#if "" != noticeBoard>
		<div class="widget-cat">
			<h4>${noticeBoardLabel}</h4>
			<ul id="bloggerinfo">
			${noticeBoard}
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != recentComments?size>
		<div class="widget-cat">
			<h4>${recentCommentsLabel}</h4>
			<ul id="newcomment">
			<#list recentComments as comment>
				<li id="comment1">
					<a target="_blank" href="${comment.commentURL}">
						${comment.commentName}
					</a><br>
					<a class=" breakline" title="${comment.commentContent}" href="${comment.commentSharpURL}">
						${comment.commentContent}
					</a>
				</li>
			</#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != mostUsedTags?size>
		<div class="widget-cat">
			<h4><span>${popTagsLabel}</span></h4>
			<ul id="blogtags">
			<#list mostUsedTags as tag>
				<span class="tag">
					<a href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}" title="${tag.tagTitle}">
					${tag.tagTitle}(${tag.tagPublishedRefCount})</a>
				</span>
			 </#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != mostCommentArticles?size>
		<div class="widget-cat">
			<h4>${mostCommentArticlesLabel}</h4>
			<ul id="blogsort">
			<#list mostCommentArticles as article>
				<li class="shortline"><sup>[${article.articleCommentCount}]</sup><a
                    title="${article.articleTitle}"
                    href="${article.articlePermalink}">${article.articleTitle}
				</a></li>
			</#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != mostViewCountArticles?size>
		<div class="widget-cat">
			<h4>${mostViewCountArticlesLabel}</h4>
			<ul id="blogsort">
			<#list mostViewCountArticles as article>
				<li class="shortline">
					<sup>[${article.articleViewCount}]</sup>
					<a title="${article.articleTitle}" href="${article.articlePermalink}">
						${article.articleTitle}
					</a>
				</li>
			</#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != links?size>
		<div class="widget-cat">
			<h4>${linkLabel}</h4>
			<ul id="link">
			<#list links as link>
				<li><a href="${link.linkAddress}" title="${link.linkTitle}" target="_blank">
				${link.linkTitle}</a></li>
			</#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>
		<#if 0 != archiveDates?size>
		<div class="widget-cat">
			<h4>${archiveLabel}</h4>
			<ul id="link">
			<#list archiveDates as archiveDate>
				<#if "en" == localeString?substring(0, 2)>
				<li><a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
				   title="${archiveDate.monthName} ${archiveDate.archiveDateYear}(${archiveDate.archiveDatePublishedArticleCount})">
					${archiveDate.monthName} ${archiveDate.archiveDateYear}</a>(${archiveDate.archiveDatePublishedArticleCount})</li>
				<#else>
				<li><a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
				   title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}(${archiveDate.archiveDatePublishedArticleCount})">
					${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a>(${archiveDate.archiveDatePublishedArticleCount})</li>
				</#if>
			</#list>
			</ul>
		</div>
		<div class="clr"></div>
		</#if>