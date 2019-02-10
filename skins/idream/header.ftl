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
			<div id="layouttop"></div>
			<div id="header">
				<div id="headerleft">
				<h1><a href="${servePath}" title="${blogTitle}">${blogTitle}</a></h1><h3>${blogSubtitle}</h3>
				</div>
				<div id="headerright">
					<div id="rssboxo">
						<a href="${servePath}/blog-articles-feed.do">${atomLabel}</a>
					</div>
				</div>
			</div>
			<div id="navouter">
				<div id="nav">
					<ul id="header-navi">
						<li><a href="${servePath}">首页</a></li>
						<#list pageNavigations as page>
						<li>
							<a href="${page.pagePermalink}" target="${page.pageOpenTarget}">
                                ${page.pageTitle}
                            </a>
						</li>
						</#list>
						<li>
							<a href="${servePath}/tags.html">${allTagsLabel}</a>
						</li>
						<li class="lastNavi">
							<a href="javascript:void(0);"></a>
						</li>
						<!--
						<li class="current_page_item"><a  href="javascript:void(0);"></a></li>
						-->
					</ul>            
				</div>
			</div>