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
<div id="comments">
    <#list commentList as comment>
    <div  class="article cl" id="${comment.oId}">	     
        <div style="float:left;margin:5px;">
            <img class="comment-header" title="${comment.commentName}"
                 alt="${comment.commentName}" src="${comment.commentThumbnailURL}"/>
        </div>
        <div class='entry-content'>	
            ${comment.commentContent}
            <#if comment.isReply>@
            <a href="${servePath}${article.permalink}#${comment.commentOriginalCommentId}"
               onmouseover="page.showComment(this, '${comment.commentOriginalCommentId}', 25);"
               onmouseout="page.hideComment('${comment.commentOriginalCommentId}')">${comment.commentOriginalCommentName}</a>
            </#if>

        </div>
        <p class="entry-meta" style="margin:0 80px;">
            <a>${comment.commentName}</a>&nbsp;&nbsp;&nbsp;  	
            ${comment.commentDate?string("yy-MM-dd HH:mm")}  
            <#if article.commentable>
            <a class="y" href="javascript:page.toggleEditor('${comment.oId}', '${comment.commentName}');">${replyLabel}</a>
            </#if>
        </p>	
    </div>	
    </#list>
</div>
<#if article.commentable>
<div class="comments" >
    <div class="comments-area">
        <textarea rows="3" placeholder="${postCommentsLabel}" id="comment"></textarea>
    </div>	
</div>
<#if externalRelevantArticlesDisplayCount?? && 0 != externalRelevantArticlesDisplayCount>
<div id="externalRelevantArticles" class="article-relative"></div>
</#if>
<span class="clear"></span>
</#if>
</#macro>