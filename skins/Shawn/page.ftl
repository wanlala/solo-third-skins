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
    <body>
        ${topBarReplacement}
        <div id="loading" style="display: none; "></div>
        <div id="page">
            <#include "header.ftl">
            <div id="content">
                <div class="post">
                    <div class="entry">
                        <div class="article-body">
                            ${page.pageContent}
                        </div>
                        <div id="postail" style="border-top-left-radius: 7px 7px; border-top-right-radius: 7px 7px; border-bottom-right-radius: 7px 7px; border-bottom-left-radius: 7px 7px; position: relative; zoom: 1; ">
                            <div style="display: inherit">
                                <canvas width="7px" height="7px" style="position:absolute;top:-2px;left:-2px;"></canvas>
                                <canvas width="7px" height="7px" style="position:absolute;top:-2px;right:-2px;"></canvas>
                                <canvas width="7px" height="7px" style="position:absolute;bottom:-2px;left:-2px;"></canvas>
                                <canvas width="7px" height="7px" style="position:absolute;bottom:-2px;right:-2px;"></canvas>
                            </div>
                        </div>
                        <div id="share">
                            <ul style="display: none; top: -225px; opacity: 0; ">
                                <li onclick="window.open('http://shuqian.qq.com/post?title=${page.pageTitle}%26uri=${blogHost}${page.pagePermalink}');return false">${QQBookmarks}</li>
                                <li onclick="window.open('http://del.icio.us/post?url%3D${blogHost}${page.pagePermalink}%26title=${page.pageTitle}');return false">Del.icio.us</li>
                                <li onclick="window.open('http://cang.baidu.com/do/add?it%3D${page.pageTitle}%26iu=${blogHost}${page.pagePermalink}%26dc%3D%26fr%3Dien#nw%3D1');return false">${BaiduFavorites}</li>
                                <li onclick="window.open('http://www.google.com/bookmarks/mark?op%3Dedit%26bkmk%3D${blogHost}${page.pagePermalink}%26title%3D${page.pageTitle}');return false">Google</li>
                                <li onclick="window.open('http://fanfou.com/sharer?u%3D${blogHost}${page.pagePermalink}%26t%3D${page.pageTitle}');return false">${FanFou}</li>
                                <li onclick="window.open('http://friendfeed.com/share?url=${blogHost}${page.pagePermalink}%26title%3D${page.pageTitle}');return false">FriendFeed</li>
                            </ul>
                        </div>
                    </div>                   
                </div>
                <@comments commentList=pageComments article=page></@comments>
            </div>
            <#include "side.ftl">
            <#include "footer.ftl">
        </div>
        <@comment_script oId=page.oId commentable=page.commentable></@comment_script>
    </body>
</html>
