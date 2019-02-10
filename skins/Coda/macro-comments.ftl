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
<section class="left ver_side maincolum">
    <h3 id="commentcount" class="hor_side">${Comments}
        <div class="comstyle">
            <span>${commentList?size}</span>&nbsp;Comments&nbsp;Contributed by Visitors
        </div>
    </h3>

    <ol id="comments" class="clear">
        <#list commentList as comment>
        <li class="comment hor_side" id="${comment.oId}">
            <div class="clear">
                <div class="comment-meta post_time icon">
                    ${comment.commentDate?string("yyyy-MM-dd")}<br>${comment.commentDate?string("HH:mm:ss")}
                </div>
                <div class="comment-author vcard">
                    <cite class="fn">
                        <#if "http://" == comment.commentURL>
                        ${comment.commentName}
                        <#else>
                        <a class="url" rel="external nofollow" href="${comment.commentURL}">${comment.commentName}</a>
                        </#if>
                    </cite>
                    <span class="says">&nbsp;${Said}</span></div>
                <div class="avatar right">
                    <img title="" alt="" src="${comment.commentThumbnailURL}" 
                         class="avatar avatar-30 photo" height="30" width="30" />
                </div>
                <div class="reply right">
                    <span class="cmntcnt ${comment.commentName}">
                        <a href="#${comment.oId}">${commentList?size - comment_index}#</a>
                    </span>&nbsp;|&nbsp;
                    <a class="replyto" rel="nofollow" href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}');" title="${replyLabel}">${replyLabel}</a>
                </div>
                <div class="comment-content">
                    <p>
                        <#if comment.isReply>
                        <a class="atreply" rel="nofollow" href="#${comment.commentOriginalCommentId}"
                           onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 23);"
                           onmouseout="page.hideComment('${comment.commentOriginalCommentId}')">
                            @${comment.commentOriginalCommentName}</a>
                        <br>
                        </#if>
                        ${comment.commentContent}
                    </p>
                </div>
            </div>
        </li>
        </#list>
    </ol>
	<#if article.commentable>
    <textarea id="comment" rows="3" placeholder="${postCommentsLabel}"
              style="width:100%;resize: none; overflow-y: hidden; "></textarea>
	</#if>
</section>
</#macro>