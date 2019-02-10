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
<ul class="xoxo">
    <#if "" != noticeBoard>
    <li id="calendar" class="widget">
        <h3 class="widget_title">${noticeBoardLabel}</h3>
        <div>${noticeBoard}</div>
    </li>
    </#if>
    <#if 0 != mostViewCountArticles?size>
    <li id="recent-post" class="widget">
        <h3 class="widget_title">${mostViewCountArticlesLabel}</h3>
        <ul>
            <#list mostViewCountArticles as article>
            <li>
                <a href="${article.articlePermalink}" title="${article.articleTitle}">${article.articleTitle} - ${article.articleViewCount}</a>
            </li>
            </#list>
        </ul>
    </li>
    </#if>
    <#if 0 != recentComments?size>		
    <li id="recent-comments" class="widget">
        <h3 class="widget_title">${recentCommentsLabel}</h3>
        <ul id="recentcomments">
            <#list recentComments as comment>
            <li class="recentcomments">
                ${comment.commentName}&nbsp;:&nbsp;
                <a href="${comment.commentSharpURL}">${comment.commentContent}
                </a>
            </li>
            </#list>
        </ul>
    </li>
    </#if>
    <#if 0 != mostUsedTags?size>
    <li id="tag_cloud" class="widget">
        <h3 class="widget_title">${popTagsLabel}</h3>
        <div id="colorfultagcloud">
            <#list mostUsedTags as tag>
            <a data-count="${tag.tagPublishedRefCount}"
               href="${staticServePath}/tags/${tag.tagTitle?url('UTF-8')}" title="${tag.tagTitle}(${tag.tagPublishedRefCount})">
                ${tag.tagTitle}
            </a>
            </#list>
        </div>
    </li>
    </#if>
    <#if 0 != mostCommentArticles?size>
    <li id="recent-post" class="widget">
        <h3 class="widget_title">${mostCommentArticlesLabel}</h3>
        <ul>
            <#list mostCommentArticles as article>
            <li>
                <a href="${article.articlePermalink}" title="${article.articleTitle}">${article.articleTitle} - ${article.articleCommentCount}</a>
            </li>
            </#list>
        </ul>
    </li>
    </#if>
    <#if 0 != links?size>
    <li id="linkcat-2" class="widget widget_links">
        <h3 class="widget_title">${linkLabel}</h3>
        <ul class="xoxo blogroll">
            <#list links as link>
            <li><a href="${link.linkAddress}" rel="friend" title="${link.linkTitle}" target="_blank">${link.linkTitle}</a></li>
            </#list>
        </ul>
    </li>
    </#if>
    <#if 0 != archiveDates?size>
    <li id="archives" class="widget">
        <h3 class="widget_title">${archiveLabel}</h3>
        <ul>
            <#list archiveDates as archiveDate>
            <li data-year="${archiveDate.archiveDateYear}">
                <#if "en" == localeString?substring(0, 2)>
                <a href="${staticServePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                   title="${archiveDate.monthName} ${archiveDate.archiveDateYear}(${archiveDate.archiveDatePublishedArticleCount})">
                    ${archiveDate.monthName} ${archiveDate.archiveDateYear}</a>(${archiveDate.archiveDatePublishedArticleCount})
                <#else>
                <a href="${staticServePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                   title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}(${archiveDate.archiveDatePublishedArticleCount})">
                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a>(${archiveDate.archiveDatePublishedArticleCount})
                </#if>
            </li>
            </#list>
        </ul>
    </li>
    </#if>
</ul>