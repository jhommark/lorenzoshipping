(function() {

    'use strict';

    angular
        .module("app.shippings")
        .controller('ShippingController', ShippingController);

    ShippingController.$inject = ['$http'];
    /* @ngInject */
    function ShippingController($http) {

        var vm = this;

        vm.shippings = {};

        getShippings();

        /**
         * Get all
         */
        function getShippings() {
            $http.get('/api/shippings').then(function(res) {
                vm.ready = true;
                vm.shippings = res.data.data;
            });
        }

    }

}());
