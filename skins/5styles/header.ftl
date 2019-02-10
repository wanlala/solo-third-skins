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
		<div id="header">
			<div id="header-left">
				<h1><a href="${servePath}">${blogTitle}</a></h1>
				<div class="description">${blogSubtitle}</div>
			</div>
			<div id="header-right">
				<div class="layout">
					<span class="themes1" onclick="setStyleSheet('css0')"> </span>
					<span class="themes2" onclick="setStyleSheet('css1')"> </span>
					<span class="themes3" onclick="setStyleSheet('css2')"> </span>
					<span class="themes4" onclick="setStyleSheet('css3')"> </span>
					<span class="themes5" onclick="setStyleSheet('css4')"> </span>
				</div>
				<div id="header-navi">
					<li><a href="${servePath}">${homeLabel}</a></li>
					<#list pageNavigations as page>
					<li><a href="${page.pagePermalink}" target="${page.pageOpenTarget}">${page.pageTitle}</a></li>
					</#list>
					<li>
						<a href="${servePath}/tags.html">${allTagsLabel}</a>
					</li>
					<li>
						<a href="${servePath}/blog-articles-feed.do">
							Atom<img src="${servePath}/images/feed.png" alt="Atom"/>
						</a>
					</li>
					<li>
						<a class="lastNavi" href="javascript:void(0);"></a>
					</li>
				</div>
			</div>
		</div>