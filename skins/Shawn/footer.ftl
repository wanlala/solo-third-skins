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
<div id="footer">
    <div id="footertext">
        <span style="color: gray;">&copy; ${year}</span> - <a href="http://${blogHost}">${blogTitle}</a><br/>
        Powered by
        <a href="http://b3log-solo.googlecode.com" target="_blank" class="logo">
            ${b3logLabel}&nbsp;
            <span style="color: orangered; font-weight: bold;">Solo</span></a>,
        ver ${version}&nbsp;&nbsp;
        Theme by <a href="http://www.ansen.org" target="_blank">Ansen</a>
        & <a href="http://vanessa.b3log.org" target="_blank">Vanessa</a>
        & <a href="http://www.q86.net" target="_blank">Angel</a>.
    </div>
    <div class="b2t" style="opacity: 0.2; "></div>
    <div class="g2b" style="opacity: 0.2; "></div>
    <form action="http://www.google.com/cse" id="cse-search-box">
        <div>
            <input type="hidden" name="cx" value="partner-pub-6776264782593260:2266952709" />
            <input type="hidden" name="ie" value="UTF-8" />
            <input type="text" name="q" size="25" />
        </div>
    </form>
</div>
<div class="advise">${Repeatedlyrefresh1} 
    <a href="${staticServePath}/blog-articles-feed.do" rel="external">RSS</a> ${Repeatedlyrefresh2}
    <a href="javascript:void(0)">${Repeatedlyrefresh3}</a>
</div>
<script type="text/javascript">
    var latkeConfig = {
        "servePath": "${servePath}",
        "staticServePath": "${staticServePath}"
    };

    var Label = {
        "clearAllCacheLabel": "${clearAllCacheLabel}",
        "clearCacheLabel": "${clearCacheLabel}",
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

    $(document).ready(function () {
        Util.init();
        Util.replaceSideEm($("#sidebarul .arrow a"));
        // set selected navi
        $("#header-navi li").each(function (i) {
            if (i < $("#header-navi li").length - 1) {
                var $it = $(this),
                        locationURL = window.location.pathname + window.location.search;
                if (i === 0 && (locationURL === "/")) {
                    $it.addClass("selected");
                    return;
                }
                if (locationURL.indexOf($it.find("a").attr("href")) > -1 && i !== 0) {
                    $it.addClass("selected");
                }
            }
        });
    });
</script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/core${miniPostfix}.js?${staticResourceVersion}"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/javascription${miniPostfix}.js?${staticResourceVersion}"></script>
${plugins}