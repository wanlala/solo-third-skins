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
<div class="container navbar-wrapper">
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<a class="btn btn-navbar " data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
			<a class="brand" href="${servePath}/">${blogTitle}</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="">
						<a href="${servePath}/"><i class="icon-home"></i>&nbsp;${indexLabel}</a>
					</li>
					<#list pageNavigations as page>
					<li>
						<a href="${page.pagePermalink}" target="${page.pageOpenTarget}">${page.pageTitle}</a>
					</li>
					</#list>
					<li class="dropdown">
						<a href="${servePath}/#" class="dropdown-toggle" data-toggle="dropdown">${allTagsLabel}<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<a href="${servePath}/tags.html">${allTagsLabel}&nbsp;<i class="icon-tags"></i></a>
							</li>
							<li class="divider"></li>
							<li class="nav-header">
								${popTagsLabel }&nbsp;<i class="icon-arrow-down"></i>
							</li>
							<#if 0 != mostUsedTags?size>
							<#list mostUsedTags as tag>
							<li>
								<a rel="tag" title="${tag.tagTitle}" href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}">
									${tag.tagTitle}</a>
							</li>
							</#list>
							</#if>
						</ul>
					</li>
				</ul>
				</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div><!-- /.navbar-inner -->
	</div><!-- /.navbar -->
</div><!-- /.container -->