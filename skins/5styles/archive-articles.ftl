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
<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${archiveDate.archiveDateMonth} ${archiveDate.archiveDateYear} (${archiveDate.archiveDatePublishedArticleCount}) - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${archiveDate.archiveDateYear}${archiveDate.archiveDateMonth}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body>
    ${topBarReplacement}
	<div id="wrap">
		<#include "header.ftl">
		<div id="main">
			<div id="maincontent">
				<div class="forFlow">
					<div class="navigation-top shortline">
						<span>${breadcrumbNaviLabel}</span>
						<a href="/">${homeLabel}</a> > <a title="${archive1Label}">
							${archive1Label}
							<#if "en" == localeString?substring(0, 2)>
							${archiveDate.archiveDateMonth} ${archiveDate.archiveDateYear} (${archiveDate.archiveDatePublishedArticleCount})
							<#else>
							${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel} (${archiveDate.archiveDatePublishedArticleCount})
							</#if>
						</a>
					</div>
					<#include "article-list.ftl">
				</div>
			</div>
			<div id="sidebar">
				<#include "side.ftl">
			</div>
		</div>
		<div id="footer">
			<#include "footer.ftl">
		</div>
	</div>
    </body>
</html>
