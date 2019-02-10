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
        <@head title="${page.pageTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${page.pageTitle}" />
        <meta name="description" content="${metaDescription}" />
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
                        <div class="post_content">
                            ${page.pageContent}
                        </div>
                    </div>
                    <div class="clear"></div>	
                    <@comments commentList=pageComments article=page></@comments>
                    <div class="clear"></div>
                </div>
                <div id="sidebar" class="widget-area">
                    <#include "side.ftl">
                </div>
                <div class="clear"></div>
            </div>
            <#include "footer.ftl">
        </div>
        <div id="bottom-bar"></div>
        <@comment_script oId=page.oId commentable=page.commentable></@comment_script>
    </body>
</html>