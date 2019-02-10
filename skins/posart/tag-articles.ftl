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
        <@head title="${tag.tagTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${tag.tagTitle}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body>	
        ${topBarReplacement}
        <#include "header.ftl">
		<div id="wrapper">
		<a href="${servePath}" class="header mhidden"><img src="${staticServePath}/skins/${skinDirName}/images/ghead.png"></a>
			<div id="container" class="cl">		
				<div class="body">
				<ul class="breadcrumb">
						<li><a href="${servePath}">首页</a> <span class="divider">/</span></li>
						<li class='active'>
						<a id="tag" rel="alternate" href="${servePath}/tag-articles-feed.do?oId=${tag.oId}" style="color:#333333">
								${tag1Label}
								${tag.tagTitle}
								(${tag.tagPublishedRefCount})
							</a></li>	
					</ul>
					<div class="posts-list">
						
						 <#include "article-list.ftl">				 
					</div>
				</div>
			</div>
	<#include "footer.ftl">
	</div>

    </body>
</html>
