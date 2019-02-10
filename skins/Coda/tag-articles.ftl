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
<#include "macro-comments.ftl">
<#include "../../common-template/macro-comment_script.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${tag.tagTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${tag.tagTitle}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
        <link rel="stylesheet" type="text/css" href="${staticServePath}/skins/${skinDirName}/css/style${miniPostfix}.css?${staticResourceVersion}" media="all" />
    </head>
    <body id="blog">
		<div id="wrap">
			<#include "header-articel.ftl">
			<div id="content" class="clear">
				<div id="main" class="left">
				<div class="opaque_10 result"><strong class="icon tags">${ArticleTags} : </strong>"${tag.tagTitle}"<br></div>	
				 <#include "article-list.ftl">	
				</div>
				<#include "side.ftl">
			</div>
			<#include "footer.ftl">
		</div>
    </body>
</html>