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
(function() {
    var wemsg = function(smsg) {
            layer.msg(smsg, { time: 2000 });
        },
        xcookie = function(name) {
            return Cookie.readCookie(name);
        },
        ccookie = function(name, value, days) {
            Cookie.createCookie(name, value, days);
        };
    if ($("body").width() > 750 && xcookie("showTips") == "" && xcookie("isShowTips") == "" && top.location.pathname == "/" && navigator.cookieEnabled) {
        layer.confirm('客官您好，<b> ' + $("#logofont").text() + ' </b>欢迎您的访问，已默认为您开启图标悬浮提示，是否需要显示悬浮提示？', {
            btn: ['留着吧', '消失一周', '再想想'],
            closeBtn: false,
            time: 9999,
            title: false,
            success: function(layero) {
                layero.find('.layui-layer-btn .layui-layer-btn0').css({ "border-color": "#333", "background-color": "#666" });
            }
        }, function() {
            ccookie("isShowTips", "1", 90);
            wemsg('<b>好嘞~</b>');
        }, function() {
            ccookie("showTips", "0", 7);
            wemsg('<b><i>7</i> 天内访问将不再提示！<b>');
        }, function() {
            layer.closeAll();
        });
    }
})();