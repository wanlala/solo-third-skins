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
        <@head title="${authorName} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${authorName}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body id="body">
        ${topBarReplacement}
        <div id="top_bar"></div>
            <div id="wrapper">
            	<#include "header.ftl">
                <div id="main">
                	<div id="content">
                		<div class="post">
							<h2 class="post_title_h2">
								${author1Label}${authorName}
							</h2>
							<div class="clear"></div>
							<div class="post_content">
                                <#include "article-list.ftl">
							</div>
							<div class="menu-mark"></div>
						</div>
					</div>
	                <div id="sidebar" class="widget-area">
	                	<#include "side.ftl">
	                </div>
	                <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <#include "footer.ftl">
            </div>
            <div class="clear"></div>
            <div id="bottom-bar"></div>
    </body>
</html>