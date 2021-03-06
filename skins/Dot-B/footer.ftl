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
    <div id="copyright">
        <div id="site-info">
            Copyright&nbsp;&nbsp;&copy;&nbsp;${year} - <a href="http://${blogHost}">${blogTitle}</a>
        </div>
        <div id="site-generator">
            Powered by <a href="http://b3log-solo.googlecode.com">${b3logLabel}&nbsp;
                <span style="color: orangered; font-weight: bold;">Solo</span></a>ver ${version}&nbsp;
            | Theme <abbr title="Dot-B v B3log">Dot-B</abbr> by <a href="http://zlz.im/" >hzlzh</a>&<a href="http://www.ansen.org" target="_blank">Ansen</a>.
        </div>
    </div><!-- #copyright -->
    <a id="return_top" href="#wrapper" rel="nofollow" title="Go Top"> &Delta;Top</a>
</div><!-- #footer -->
<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js?${staticResourceVersion}" charset="utf-8"></script>
<script type='text/javascript' src='${staticServePath}/skins/${skinDirName}/js/all${miniPostfix}.js?${staticResourceVersion}'></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript">
var latkeConfig = {
    "servePath": "${servePath}",
    "staticServePath": "${staticServePath}"
};

    var Label =({
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
    });
    
    $(document).ready(function () {
	    Util.init();
		Util.replaceSideEm($("#recentComments .row"));
	});
</script>