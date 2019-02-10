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
<#macro comments commentList article>
<div class="comments" id="comments">
    <#list commentList as comment>
    <div id="${comment.oId}" class="comment-body">
        <div class="comment-panel">
            <div class="left comment-author">
                <div>
                    <img alt="${comment.commentName}" src="${comment.commentThumbnailURL}"/>
                </div>
                <#if "http://" == comment.commentURL>
                <a title="${comment.commentName}">${comment.commentName}</a>
                <#else>
                <a title="${comment.commentName}" href="${comment.commentURL}" target="_blank">${comment.commentName}</a>
                </#if>
            </div>
            <div class="left comment-info">
                <div class="left">
                    ${comment.commentDate?string("yyyy-MM-dd HH:mm:ss")}
                    <#if comment.isReply>
                    @
                    <a href="${servePath}${article.permalink}}#${comment.commentOriginalCommentId}"
                       onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 3);"
                       onmouseout="page.hideComment('${comment.commentOriginalCommentId}')">${comment.commentOriginalCommentName}</a>
                    </#if>
                </div>
                <div class="right">
                    <#if article.commentable>
                    <a rel="nofollow" class="no-underline" href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}');">${replyLabel}</a>
                    </#if>
                </div>
                <div class="clear"></div>
                <div class="comment-content">
                    ${comment.commentContent}
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    </#list>
</div>
<#if article.commentable>
<div class="comment-form">
    <textarea rows="3" placeholder="${postCommentsLabel}" id="comment"></textarea>
</div>
</#if>
</#macro>