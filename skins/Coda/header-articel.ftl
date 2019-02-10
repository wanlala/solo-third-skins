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
<header>
    <h2 id="logo"><a href="${blogHost}">${blogTitle}</a></h2>
    <nav>
        <ul class="menu clear">
            <li>
                <a href="${staticServePath}" title="${indexLabel}">${indexLabel}</a>
            </li>
            <li>
                <a href="${staticServePath}/tags.html">${allTagsLabel}</a>  
            </li>
            <#list pageNavigations as page>
            <li>
                <a href="${page.pagePermalink}">${page.pageTitle}</a>
            </li>
            </#list>
        </ul>
    </nav>
    <div id="dash" class="clear">
        <div class="right">${blogSubtitle}</div>
        <div>
            <p class="icon post_subr">
                <a href="http://fusion.google.com/add?feedurl=${blogHost}${staticServePath}/blog-articles-feed.do">Google${RSS}</a>${Or}
                <a href="http://xianguo.com/subscribe?url=http%3A%2F%2F${blogHost}%2Fblog-articles-feed.do">${XianGuo}${RSS}</a>
            </p>
            <p class="icon me_tsina">
                <a target="_blank" href="http://t.qq.com/shenan" rel="external">${Mine}${TencentWeiBo}</a>
            </p>
        </div>
    </div>
</header>
