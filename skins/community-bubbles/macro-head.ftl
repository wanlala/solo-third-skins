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
<#macro head title>
<meta charset="utf-8" />
<title>${title}</title>
<#nested>
<meta name="author" content="Armstrong@sweelia.com" />
<meta name="generator" content="B3log" />
<meta name="copyright" content="B3log" />
<meta name="revised" content="Sweelia.com, ${year}" />
<meta http-equiv="Window-target" content="_top" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-base${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/community-bubbles.css?${staticResourceVersion}" charset="utf-8" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/bubbles.css?${staticResourceVersion}" charset="utf-8" />
<link href="${servePath}/blog-articles-feed.do" title="ATOM" type="application/atom+xml" rel="alternate" charset="utf-8"/>
<link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/md5.js?${staticResourceVersion}"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/gravatar.js?${staticResourceVersion}"></script>
${htmlHead}
</#macro>