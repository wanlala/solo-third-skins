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
<!DOCTYPE html>
<html>
    <head>
        <@head title="${allTagsLabel} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${allTagsLabel}"/>
        <meta name="description" content="<#list tags as tag>${tag.tagTitle}<#if tag_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body id="body">
        ${topBarReplacement}
        <div id="top_bar"></div>
            <div id="wrapper">
            	<#include "header.ftl">
                <div id="main">
                	<div id="content">
                		<div class="post">
							<h2 class="post_title_h2">
								<a href="${blogHost}/tags.html" style="opacity: 1;">${allTagsLabel}</a>
							</h2>
							<div class="clear"></div>
							<div class="post_content">
                                <ul id="tags" class="tags">
                                    <#list tags as tag>
                                    <li>
                                        <a data-count="${tag.tagPublishedRefCount}"
                                           href="${staticServePath}/tags/${tag.tagTitle?url('UTF-8')}" title="${tag.tagTitle}">
                                            <span>${tag.tagTitle}</span>
                                            (<b>${tag.tagPublishedRefCount}</b>)
                                        </a>
                                    </li>
                                    </#list>
                                </ul>
							</div>
							<div class="menu-mark"></div>
						</div>
					</div>
	                <div id="sidebar" class="widget-area">
	                	<#include "side.ftl">
	                </div>
	                <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <#include "footer.ftl">
				 <script type="text/javascript">
					Util.buildTags();
				</script>
            </div>
            <div class="clear"></div>
            <div id="bottom-bar"></div>
    </body>
</html>