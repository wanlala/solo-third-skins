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
<div>
    <!-- You can start editing here -->
    <h2 id="comments-title"><span>{ <a href="#respond"  rel="nofollow" title="Leave a Reply ?">Leave a Reply ?</a> }</span></h2>
    <ol class="commentlist" id="comments">
        <#list commentList as comment>
        <li id="${comment.oId}">
            <div class="by-vistor">
                <div class="comment-author vcard">
                    <img alt="${comment.commentName}" src="${comment.commentThumbnailURL}" class="avatar avatar-40 photo" height="40" width="40">
                    <cite class="fn">
                        <#if "http://" == comment.commentURL>
                        ${comment.commentName}
                        <#else>
                        <a href="${comment.commentURL}" rel="external nofollow" class="url">${comment.commentName}</a>
                        </#if> 
                    </cite>			
                    <span class="comment-meta commentmetadata">
                        ${comment.commentDate?string("yyyy-MM-dd HH:mm:ss")}
                        <a href="#${comment.oId}"> # </a>
                    </span><!-- .comment-meta .commentmetadata -->
                </div>
                <div class="comment-content">
                    <p>
                     <#if comment.isReply>
                            @  <a href="${article.permalink}#${comment.commentOriginalCommentId}"
                                  onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 35, 'li');"
                                  onmouseout="page.hideComment('${comment.commentOriginalCommentId}')">${comment.commentOriginalCommentName}</a><br>
                    </#if>
                        ${comment.commentContent}
                    </p>
                </div>
                <#if article.commentable>
                <div class="reply">
                    <a class="comment-reply-link"
                       href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}');">${replyLabel}</a>
                </div>
                </#if>
            </div>
        </li>
        </#list>
    </ol>
    <#if article.commentable>
    <div id="respond">
        <h3 id="reply-title">Leave a Reply</h3>
        <p class="comment-notes">Your email address will not be published.</p>
        <textarea style="width: 100%" id="comment" name="comment" rows="3" placeholder="${postCommentsLabel}" aria-required="true"></textarea>
    </div>
    <#else>
    <div class="comstyle">The Comments <span>Closed!</span></div>
    </#if>
</div>
</#macro>