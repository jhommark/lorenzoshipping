(function() {

    'use strict';

    angular
        .module('app.shippings')
        .run(appRun);

    appRun.$inject = ['routerHelper'];
    /* @ngInject */
    function appRun(routerHelper) {
        routerHelper.configureStates(getStates());
    }

    function getStates() {
        return [
            {
                state: 'shippings',
                config: {
                    url: '/client/shippings',
                    templateUrl: '/client/views/client.shippings.index',
                    controller: 'ShippingController',
                    controllerAs: 'vm',
                    title: 'Shippings'
                }
            }, {
                state: 'schedules',
                config: {
                    url: '/client/schedules',
                    templateUrl: '/client/views/client.schedules.index',
                    controller: 'ShippingController',
                    controllerAs: 'vm',
                    title: 'Schedules'
                }
            }
        ];
    }
})();