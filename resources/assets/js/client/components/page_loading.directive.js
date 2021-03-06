(function() {

    'use strict';

    angular
        .module('app.components')
        .directive("pageLoading", pageLoading);

    function pageLoading() {
        var directive = {
            restrict: "E",
            scope: {},
            template: "<div class='preloader'><img src='/client/images/preloader.gif' alt='preloader gif'></div>"
        };

        return directive;
    }

}());