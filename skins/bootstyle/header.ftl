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
<header id="banner" class="navbar navbar-fixed-top" role="banner" style="z-index: 9;">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="${servePath}" title="${blogSubtitle}">${blogTitle}</a>
            <nav id="nav-main" class="nav-collapse" role="navigation">
                <ul id="menu-primary-navigation" class="nav">
                    <li class="menu-home"><a href="${servePath}">${indexLabel}</a></li>
                    <#list pageNavigations as page>
                    <li><a href="${page.pagePermalink}" target="${page.pageOpenTarget}">${page.pageTitle}</a></li>
                    </#list>
                    <li>
                        <a href="${servePath}/tags.html">${allTagsLabel}</a>
                    </li>
                    <li>
                        <a rel="alternate" href="${servePath}/blog-articles-feed.do">Atom<img src="${staticServePath}/images/feed.png" alt="Atom"/></a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>

