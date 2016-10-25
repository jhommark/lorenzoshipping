(function() {

    'use strict';

    angular
        .module("app.shippings")
        .controller('ShippingController', ShippingController);

    ShippingController.$inject = ['$stateParams', 'Shipping'];
    /* @ngInject */
    function ShippingController($stateParams, Shipping) {

        var vm = this;

        vm.shippings = {};
        vm.shipping = {};

        if(!$stateParams.id) { getShippings(); }
        if($stateParams.id) { getShipping(); }

        /**
         * Get all
         */
        function getShippings() {
            Shipping.get(function(res) {
                vm.shippings = res.data;
                vm.ready = true;
            });
        }

        /**
         * find by id
         */
        function getShipping() {
            vm.shipping = Shipping.get({id: $stateParams.id}, function() {
                vm.ready = true;
            });
        }

    }

}());
