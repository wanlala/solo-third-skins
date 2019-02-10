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
<ul class="comments" id="comments">
    <#list commentList as comment>
    <li id="${comment.oId}">
        <img class="avatar" title="${comment.commentName}" src="${comment.commentThumbnailURL}">
        <div class="content">
            <div class="fn-clear post-meta">
                <span class="fn-left">
                    <#if "http://" == comment.commentURL>
                    <a>${comment.commentName}</a>
                    <#else>
                    <a href="${comment.commentURL}" rel="nofollow">${comment.commentName}</a>
                    </#if>
                    <#if comment.isReply>
                    <span class="iconfont icon-anonymous-iconfont"></span>
                    <a class="quote-link" href="${article.permalink}#${comment.commentOriginalCommentId}"
                       onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 23);"
                       onmouseout="page.hideComment('${comment.commentOriginalCommentId}')"
                       >${comment.commentOriginalCommentName}</a>
                    </#if>
                    <time>${comment.commentDate?string("yyyy-MM-dd")}</time> 
                </span>
                <#if article.commentable>
                <a class="fn-right itip" lang="${replyLabel}" id="rep_${comment.oId}" href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}')"><span class="iconfont icon-huiche"></span></a>
                </#if>
            </div>
            <div class="comment-content">${comment.commentContent}</div>
        </div>
    </li>
    </#list>
	<li style="margin-bottom:15px;padding-bottom:15px;">
		<div id="conoption">
			<span id="replyname" style="display:inline-block"></span>
			<a class="fn-right iconfont icon-send itip" id="reply-original" href="javascript:page.toggleEditor()" lang="回帖"></a>
		</div>
	</li>
</ul>
<#if article.commentable>
<div class="form" style="padding: 0;margin: 0 60px 0 50px;width: auto">
    <textarea rows="3" class="OwO-textarea" placeholder="${postCommentsLabel}" id="comment"></textarea>
</div>
</#if>
</#macro>