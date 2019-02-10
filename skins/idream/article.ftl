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
        <@head title="${article.articleTitle} - ${blogTitle}">
        <meta name="keywords" content="${article.articleTags}"/>
        <meta name="description" content="${article.articleAbstract?html}"/>
        </@head>
	</head>
    <body>
        ${topBarReplacement}
		<div id="wrapper" align="center">
			<#include "header.ftl">
			<div id="outerwrapper">
				<div id="innerwrapper">
					<div id="rightcol">
						<#include "side.ftl">
					</div>
					<!---->
					<div id="maincol">
						<div class="postwrap">
							<div class="postmeta2">
								<div class="meta2inner">
									<div class="pyear">
									<#if article.hasUpdated>
									${article.articleUpdateDate?string("yyyy")}
									<#else>
									${article.articleCreateDate?string("yyyy")}
									</#if>
									</div>
									<div class="pday">
									<#if article.hasUpdated>
									${article.articleUpdateDate?string("MM/dd")}
									<#else>
									${article.articleCreateDate?string("MM/dd")}
									</#if>
									</div>
								</div>
							</div>
							<h2 class="posttitle breakline">
								<a href="${servePath}${article.articlePermalink}">${article.articleTitle}</a>
							</h2>
							<div class="postmeta">
								<#if article.articlePutTop>
									${topArticleLabel}
								</#if>
								<#if article.hasUpdated>
									${updatedLabel}
								</#if>
								<a href="${servePath}/authors/${article.authorId}">${article.authorName}</a>
								<a href="${servePath}${article.articlePermalink}">${article.articleViewCount} ${viewLabel}</a>
							</div>
							<div class="clr16"></div>
							<div class="postcontent breakline article-body">
							${article.articleContent}
							<#if "" != article.articleSign.signHTML?trim>
							<div class="marginTop12">
								${article.articleSign.signHTML}
							</div>
							</#if>
							</div>
							<div class="clr"></div>
							<div class="roubcornrcontent">
								<span class="posttags" title="${tagLabel}">
									<#list article.articleTags?split(",") as articleTag>
									<a href="${servePath}/tags/${articleTag?url('UTF-8')}">
											${articleTag}</a><#if articleTag_has_next>,</#if>
									</#list>
								</span>
								<a href="${servePath}${article.articlePermalink}#comments">
									<span class="postcomments" title="${commentLabel}">
									${article.articleCommentCount}
									</span>
								</a>
								<div class="clr"></div>
							</div>
							<div class="clr"></div>
							<div class="nextlog shortline">
								<#if nextArticlePermalink??>
								<a href="${servePath}${nextArticlePermalink}">${nextArticle1Label}${nextArticleTitle}</a>
								<br/>
								</#if>
								<#if previousArticlePermalink??>
								<a href="${servePath}${previousArticlePermalink}">${previousArticle1Label}${previousArticleTitle}</a>
								<br/>
								</#if>
							</div>
							<div id="relevantArticles" class="article-relative"></div>
							<div id="randomArticles" class="article-relative"></div>
							<div id="externalRelevantArticles" class="article-relative"></div>
							<div class="clr"></div>
						</div>
						<div class="clr"></div>
						<@comments commentList=articleComments article=article></@comments>
					</div>
					<div class="clr"></div>
					<div class="copyr">
					&copy; ${year}&nbsp;<a href="http://${blogHost}">${blogTitle}</a>
					</div>
					<div class="clr16"></div>
					<!---->
				</div>
			</div>
			<#include "footer.ftl">
		</div>
        <@comment_script oId=article.oId commentable=article.commentable>
        page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
		<#if 0 != randomArticlesDisplayCount>
		    page.loadRandomArticles();
		</#if>
		<#if 0 != relevantArticlesDisplayCount>
		    page.loadRelevantArticles('${article.oId}', '<h4>${relevantArticles1Label}</h4>');
		</#if>
		<#if 0 != externalRelevantArticlesDisplayCount>
		    page.loadExternalRelevantArticles("<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>");
		</#if>
        </@comment_script>
    </body>
</html>