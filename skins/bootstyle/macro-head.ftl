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
<meta http-equiv="Window-target" content="_top" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/bootstrap/css/bootstrap${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/bootstrap/css/bootstrap-responsive${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
<link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/${skinDirName}${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
<link href="${servePath}/blog-articles-feed.do" title="ATOM" type="application/atom+xml" rel="alternate" />
<link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
${htmlHead}
</#macro>