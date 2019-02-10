/*
 * Solo - A small and beautiful blogging system written in Java.
 * Copyright (c) 2010-2019, b3log.org & hacpai.com
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
function showPageLink(sUrl, iPage, iCount, sAnchor)
{
	var i = 0;
	i = Math.max(1, iPage - 1);

	if (iPage == 1)
	{
		document.write("<span class='pages' style='color:#7D7D7D'>1st</span> ");
		document.write("<span class='pages' style='color:#7D7D7D'>&laquo;</span> ");
	}
	else
	{
		document.write("<a href=\"" + sUrl + sAnchor + "1\" title='The 1 page'>1st</a> ");
		document.write("<a href=\"" + sUrl + i + sAnchor + "\" title='Prev page(The " + i + " page)'>&laquo;</a> ");
	}

	if (iPage > 6)
	{
		document.write("<span>...</span> ");
	}

	for (i = Math.max(1, iPage - 5); i < iPage; i++)
	{
		document.write("<a href=\"" + sUrl + i + sAnchor + "\" title='The " + i + " page'>" + i + "</a> ");
	}
	document.write("<font color='red'>" + iPage + "</font> ");

	for (i = iPage + 1; i <= Math.min(iCount, iPage + 5); i++)
	{
		document.write("<a href=\""+sUrl + i + sAnchor + "\" title='The " + i + " page'>" + i + "</a> ");
	}
	i = Math.min(iCount, iPage + 1);

	if (iCount > iPage + 5)
	{
		document.write("<span>...</span> ");
	}
	if (iPage == iCount)
	{
		document.write("<span class='pages' style='color:#7D7D7D'>&raquo;</span> ");
		document.write("<span class='pages' style='color:#7D7D7D'>Last</span> ");
	}
	else
	{
		document.write(" <a href=\"" + sUrl + i + sAnchor + "\" title='Next page(The " + i + " page)'>&raquo;</a>");
		document.write("<a href=\"" + sUrl + iCount + sAnchor + "\" title='Last page(The " + iCount + " page)'>Last</a> ");
    }
}
