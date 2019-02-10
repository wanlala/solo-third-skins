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
<html lang="zh-cmn-Hans">
<head>
<@head title="${article.articleTitle} - ${blogTitle}">
<meta name="keywords" content="${article.articleTags}">
<meta name="description" content="${article.articleAbstract?html}">
</@head>
<link rel="stylesheet" href="/skins/${skinDirName}/js/lib/OwO/OwO.min.css">
<#if previousArticlePermalink??>
<link rel="prev" title="${previousArticleTitle}" href="${servePath}${previousArticlePermalink}">
</#if>
<#if nextArticlePermalink??>
<link rel="next" title="${nextArticleTitle}" href="${servePath}${nextArticlePermalink}">
</#if>
</head>
<body>
<#include "side.ftl">
<main>
	<article class="post article-body">
		<header>
			<h2>
				<a rel="bookmark" href="${article.articlePermalink}">${article.articleTitle}</a>
			  <#if article.hasUpdated>
				<sup><span class="iconfont icon-xin itip" id="artUdp" lang="${updatedLabel}"></span></sup>
			  </#if>
			  <#if article.articlePutTop>
				<sup><span class="iconfont icon-zhiding2 itip" id="artTop" lang="${topArticleLabel}"></span></sup>
			  </#if>
			</h2>
			<time><span class="icon-date"></span> ${article.articleCreateDate?string("yyyy-MM-dd")}</time>
			<section class="tags">
				<span class="icon-tag"></span>  &nbsp;
				<#list article.articleTags?split(",") as articleTag>
				<a class="tag" rel="tag" href="/tags/${articleTag?url('UTF-8')}">${articleTag}</a>
				</#list>
				<#-- <a rel="nofollow"></a> -->
				<img class="avatar itip" id="ava_author" title="${article.authorName}" alt="Seves" lang="发表人 ${article.authorName}" src="${article.authorThumbnailURL}" data- href="/authors/${article.authorId}" />
			</section>
		</header>
		<section class="abstract">
			${article.articleContent}<#-- 
			<blockquote><p>本文链接：<a href="${servePath}${article.articlePermalink}">${servePath}${article.articlePermalink}</a></p></blockquote> -->
			<#if "" != article.articleSign.signHTML?trim>
			<div>
				${article.articleSign.signHTML}
			</div>
			</#if>
			<#if nextArticlePermalink?? || previousArticlePermalink??>
			<aside class="fn-clear">
				<#if previousArticlePermalink??>
				<a class="fn-left" rel="prev" href="${previousArticlePermalink}">
					<span class="iconfont icon-xiangzuo1"></span> ${previousArticleTitle}
				</a>
				</#if>
				<#if nextArticlePermalink??>
				<a class="fn-right" rel="next" href="${nextArticlePermalink}">
					${nextArticleTitle} <span class="iconfont icon-xiangyou2"></span>
				</a>
				</#if>
			</aside>
			</#if>
		</section>
		<footer class="fn-clear share">
			<div class="fn-left"><i class="iconfont icon-liulan itip" id="articleVCount" lang="${viewCount1Label}${article.articleViewCount}"> ${article.articleViewCount}</i></div>
			<div class="fn-right"> 
				<span class="iconfont icon-qq4" data-type="qq" style="font-size:26.3px"></span>
				<span class="icon icon-weibo" data-type="weibo"></span>
				<span class="icon icon-t-weibo" data-type="tencent"></span>
				<span class="icon icon-twitter" data-type="twitter"></span>
				<span class="icon icon-gplus" data-type="google"></span>
			</div>
		</footer>
		<div id="externalRelevantArticles" class="abstract"></div>
	</article>
	<@comments commentList=articleComments article=article></@comments>
	<script>
	  window.innerWidth>750 && $.each($("pre"), function (i, n) { 
        var txt = $(`<textarea style='width:0;height:0;position:absolute;top: -190000px;'>` + $(n).text() + ` </textarea>`), 
        copyTip = $(`<i style="float:right; position:relative; margin-top:-40px; padding:13px 10px 30px 0; cursor:pointer;" class="code__copy tooltipped tooltipped-w itip iconfont icon-fuzhiwenjian" lang="复制" 
         id="copy-tip-` + i + `" data-point="4"
         onclick="$(this).prev()[0].select();document.execCommand('copy');layer.msg('已复制到剪贴板', {time: 999});"></i>`); 
        $(n).append(txt).append(copyTip); 
      });
	</script>
	<#include "footer.ftl">
	<@comment_script oId=article.oId commentable=article.commentable>
	page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
	<#if 0 != externalRelevantArticlesDisplayCount>
	page.loadExternalRelevantArticles("<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>");
	</#if>
	</@comment_script>    
</main>
</body>
</html>