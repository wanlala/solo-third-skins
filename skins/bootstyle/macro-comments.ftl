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
<!-- comments -->
<div id="comments" class="comments article-comments">
    <#list commentList as comment>
    <div class="media bs-docs-example-child" id="${comment.oId}">
        <#if "http://" == comment.commentURL>
        <a class="pull-left" title="${comment.commentName}"><img class="media-object img-polaroid" data-src="holder.js/64x64" style="width: 64px; height: 64px;" src="${comment.commentThumbnailURL}"></a>
        <#else>
        <a class="pull-left" href="${comment.commentURL}" target="_blank"><img class="media-object img-polaroid" data-src="holder.js/64x64" style="width: 64px; height: 64px;" src="${comment.commentThumbnailURL}"></a>
        </#if>
        <div class="media-body">
            <h4 class="media-heading">
                <#if "http://" == comment.commentURL>
                <a>${comment.commentName}</a>
                <#else>
                <a href="${comment.commentURL}" target="_blank">${comment.commentName}</a>
                </#if>
                <#if comment.isReply>
                <i class="icon-share-alt"></i>
                <a href="${servePath}${article.permalink}#${comment.commentOriginalCommentId}"
                   onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 10);"
                   onmouseout="page.hideComment('${comment.commentOriginalCommentId}')">${comment.commentOriginalCommentName}</a>
                </#if>
                <span class="pull-right" style="font-size: 12px;font-weight: normal;color: #676767;">
                    <i class="icon-time"></i> 
                    ${comment.commentDate?string("yyyy-MM-dd HH:mm:ss")}
                    <i class="icon-comment"></i>
                    <a rel="nofollow" href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}');">${replyLabel}</a>
                </span>
            </h4>
            ${comment.commentContent}
            <!-- Nested media object -->
            <div class="media" ref="#media_${comment.commentOriginalCommentId}">
            </div>
        </div>
    </div>
    </#list>
</div>

<!-- Leave a comment -->
<#if article.commentable>
<textarea rows="3" placeholder="${postCommentsLabel}" id="comment" class="input-block-level"></textarea>
<#if externalRelevantArticlesDisplayCount?? && 0 != externalRelevantArticlesDisplayCount>
<div id="externalRelevantArticles" class="article-relative"></div>
</#if>
</#if>
</#macro>