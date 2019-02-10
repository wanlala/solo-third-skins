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
<div id="ajax_comments_wrapper">
    <div class="comstyle">
        ${commentList?size}&nbsp;Comments<span>&nbsp;Contributed by Visitors</span>
    </div>
    <div id="comments">
        <div>
            <ol class="commentlist">
                <#list commentList as comment>
                <li id="${comment.oId}">
                    <cite>
                        <img data-id="${comment.oId}" onclick="page.toggleEditor('${comment.oId}', '${comment.commentName}')"
                             class="atreply" 
                             title="${ClickToReply} ${comment.commentName}" 
                             src="${staticServePath}/skins/${skinDirName}/images/reply.png" 
                             alt="rebutton"
                             width="20"
                             height="16"
                             style="display: none;" />
                        <#if "http://" == comment.commentURL>
                        ${comment.commentName}
                        <#else>
                        <a class="url" rel="external nofollow" href="${comment.commentURL}">${comment.commentName}</a>
                        </#if> / 
                        <small>${comment.commentDate?string("HH:mm:ss")}&nbsp;@&nbsp;${comment.commentDate?string("yyyy-MM-dd")}</small>
                    </cite>
                    <span class="cmntcnt ${comment.commentName}">
                        <a href="#${comment.oId}">${commentList?size - comment_index}#</a>
                    </span>
                    <div class="lovatar">
                        <img src="${comment.commentThumbnailURL}" alt="leehow" class="gravatar" width="48" height="48" />
                    </div>
                    <div class="list">
                        <p>
                            <#if comment.isReply>
                            <a class="replybox" href="#${comment.commentOriginalCommentId}">
                                @${comment.commentOriginalCommentName}</a>
                            <br>
                            </#if>
                            ${comment.commentContent}
                        </p>
                    </div>
                </li>
                </#list>
            </ol>
        </div>
    </div>
	<#if article.commentable>
    <div id="respond" class="comstyle">Leave <span>Comments</span> Here...</div>
    <div class="reply">
        <textarea rows="3" placeholder="${postCommentsLabel}" id="comment"  name="comment" tabindex="4"></textarea>
    </div>
	<#else>
	    <div id="respond" class="comstyle">The <span>Comments</span> Closed...</div>
	</#if>
    <ul class="endnotes">
        <li>${Endnotes1}</li>
        <li>${Endnotes2}</li>
		<li>${Endnotes3}</li>
        <li>${Endnotes4}<code style="padding:2px 5px">&lt; = &amp;lt;</code>,<code style="padding:2px 5px">&gt; = &amp;gt;</code> .</li>
        <li>${Endnotes5}</li>
        <li>${Endnotes6} <img src="${staticServePath}/skins/${skinDirName}/images/reply.png" width="20" height="16" alt="Reply" style="vertical-align:middle"> ${Endnotes7} <code style="padding:2px 5px">${Endnotes8}</code>.</li>
        <li>${Endnotes9}</li>
    </ul>
</div>
</#macro>