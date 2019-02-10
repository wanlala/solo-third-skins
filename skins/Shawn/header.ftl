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
    <h1 id="title">
        <a href="${staticServePath}">${blogTitle}</a>
    </h1>
    <h2 id="discription">${blogSubtitle}</h2>
    <ul class="nav" id="header-navi">
        <li>
            <a href="${staticServePath}" title="${indexLabel}">${indexLabel}</a>
        </li>
        <li>
            <a href="${staticServePath}/tags.html">${allTagsLabel}</a>  
        </li>
        <#list pageNavigations as page>
        <li>
            <a href="${page.pagePermalink}" target="${page.pageOpenTarget}">${page.pageTitle}</a>
        </li>
        </#list>
    </ul>
    <div class="twitter" style="opacity: 0.7; "></div>
</div>
<hr />