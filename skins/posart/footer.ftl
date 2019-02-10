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
<div class="site-footer" role="contentinfo">
			 <p><span class="ft-gray">&copy; ${year}</span> - <a href="${servePath}">${blogTitle}</a>
            Powered by
            <a href="http://b3log.org" target="_blank" class="logo">
                ${b3logLabel}&nbsp;
                <span style="color: orangered; font-weight: bold;">Solo</span></a>,
            ver ${version}&nbsp;&nbsp;
            Theme Posart Design By <a href="http://www.dsu.pw" target="_blank">Goy</a>| Edit By <a href="http://Zbmobi.com" target="_blank">GCoder</a></p>
			<p></p>
			<p> ${viewCount1Label}
                <span class="ft-gray">
                    ${statistic.statisticBlogViewCount}
                </span>
                &nbsp;&nbsp;
                ${articleCount1Label}
                <span class="ft-gray">
                    ${statistic.statisticPublishedBlogArticleCount}
                </span>
                &nbsp;&nbsp;
                ${commentCount1Label}
                <span class="ft-gray">
                    ${statistic.statisticPublishedBlogCommentCount}
                </span></p>
				<p></p>
			<p>鲁ICP备13005988号</p>
			
			</div>
			<div id="rightmenu">			
			<a href="#" onclick="Util.goTop()" class="totop"></a>
		</div>
<script type="text/javascript">
    var latkeConfig = {
        "servePath": "${servePath}",
        "staticServePath": "${staticServePath}"
    };
    
    var Label = {
        "tag1Label": "${tag1Label}",
        "viewLabel": "${viewLabel}",
        "commentLabel": "${commentLabel}",
        "topArticleLabel": "${topArticleLabel}",
        "updatedLabel": "${updatedLabel}",
        "contentLabel": "${contentLabel}",
        "abstractLabel": "${abstractLabel}",
        "adminLabel": "${adminLabel}",
        "logoutLabel": "${logoutLabel}",
        "skinDirName": "${skinDirName}",
        "loginLabel": "${loginLabel}",
        "em00Label": "${em00Label}",
        "em01Label": "${em01Label}",
        "em02Label": "${em02Label}",
        "em03Label": "${em03Label}",
        "em04Label": "${em04Label}",
        "em05Label": "${em05Label}",
        "em06Label": "${em06Label}",
        "em07Label": "${em07Label}",
        "em08Label": "${em08Label}",
        "em09Label": "${em09Label}",
        "em10Label": "${em10Label}",
        "em11Label": "${em11Label}",
        "em12Label": "${em12Label}",
        "em13Label": "${em13Label}",
        "em14Label": "${em14Label}"
    };
</script>
<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
${plugins}
