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
<div class="span3">
	<div>
		<h4>${mostViewCountArticlesLabel}&nbsp;<i class="icon-folder-close"></i></h4>
		<ul  class="unstyled">
			<#list mostViewCountArticles as article>
            <li>
                <p><a href="${servePath}${article.articlePermalink}" class="tooltipLink" data-original-title='${article.articleAbstract}'>${article.articleTitle}</a></p>
                <span style="display: none;">${article.articleAbstract}</span>
            </li>
            </#list>
		</ul>
	</div>
	<div>
		<h4>${mostCommentArticlesLabel}&nbsp;<i class="icon-comment"></i></h4>
		<ul  class="unstyled">
			<#list mostCommentArticles as article>
            <li>
                <p><a href="${servePath}${article.articlePermalink}" class="tooltipLink" data-original-title='${article.articleAbstract}'>${article.articleTitle}</a></p>
                <span style="display: none;">${article.articleAbstract}</span>
            </li>
            </#list>
		</ul>
	</div>
	<div>
		<#if 0 != mostUsedTags?size>
		<#list mostUsedTags as tag>
		<li>
			<a rel="tag" title="${tag.tagTitle}" href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}">
				${tag.tagTitle}</a>
		</li>
		</#list>
		</#if>
	</div>
	<div>
		<#list links as link>
		<li>
			<span class="left">
			<a rel="friend" href="${link.linkAddress}" title="${link.linkTitle}" target="_blank" >
				<img alt="${link.linkTitle}"
					 src="http://www.google.com/s2/u/0/favicons?domain=<#list link.linkAddress?split('/') as x><#if x_index=2>${x}<#break></#if></#list>" />&nbsp;${link.linkTitle}
			</a>
			</span>&nbsp;&nbsp;
		</li>
		</#list>
	</div>
	<div>
		<#if 0 != archiveDates?size>
    <div class="item">
        <h4>${archiveLabel}</h4>
        <ul>
            <#list archiveDates as archiveDate>
            <li>
                <#if "en" == localeString?substring(0, 2)>
                <a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                   title="${archiveDate.monthName} ${archiveDate.archiveDateYear}(${archiveDate.archiveDatePublishedArticleCount})">
                    ${archiveDate.monthName} ${archiveDate.archiveDateYear}</a>(${archiveDate.archiveDatePublishedArticleCount})
                <#else>
                <a href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}"
                   title="${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}(${archiveDate.archiveDatePublishedArticleCount})">
                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}</a>(${archiveDate.archiveDatePublishedArticleCount})
                </#if>
            </li>
            </#list>
        </ul>
    </div>
    </#if>
	</div>
</div>