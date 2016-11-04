(function() {

    'use strict';

    angular
        .module("app.shippings")
        .controller('ShippingController', ShippingController);

    ShippingController.$inject = ['$http'];
    /* @ngInject */
    function ShippingController($http) {

        var vm = this;

        vm.fromPort = 0;
        vm.toPort = 0;
        vm.locations = {};
        vm.schedules = {};
        vm.routeInfo = {};
        vm.getLocations = getLocations;
        vm.getLocationById = getLocationById;
        vm.getSchedulesByShippingId = getSchedulesByShippingId;
        vm.loadShippingInfo = loadShippingInfo;
        vm.formatList = formatList;

        vm.getLocations();

        /**
         * Get all
         */
        function getLocations() {
            $http.get('/api/locations').then(function(res) {
                vm.ready = true;
                vm.locations = res.data.data;
            });
        }

        function getLocationById(id, callback) {
            $http.get('/api/location?id='+id).then(function(res) {
                callback(res.data.location);
            });
        }

        function getSchedulesByShippingId(id, callback) {
            $http.get('/api/schedules?id_shippings='+id).then(function(res) {
                callback(res.data.data);
            });
        }

        function formatList(list, callback) {
            var chunks = list.split(';');
            callback(chunks);
        }

        function loadShippingInfo() {
            if(!vm.fromPort.length || !vm.toPort.length) return;
            $http.get('/api/shippings?from_port='+vm.fromPort+'&to_port='+vm.toPort).then(function(res) {
                if(res) {
                    vm.routeInfo = res.data.data[0];
                    vm.getLocationById(vm.fromPort, function (res) {
                        vm.routeInfo.fromPortName = res;
                    });
                    vm.getLocationById(vm.toPort, function (res) {
                        vm.routeInfo.toPortName = res;
                    });
                    vm.getSchedulesByShippingId(vm.routeInfo.id, function (res) {
                        vm.schedules = res;
                    });
                    vm.formatList(vm.routeInfo.shipping_services, function (res) {
                        vm.routeInfo.shippingServices = res;
                    });
                    vm.formatList(vm.routeInfo.shipping_cargoes, function (res) {
                        vm.routeInfo.shippingCargoes = res;
                    });
                    vm.formatList(vm.routeInfo.shipping_vessels, function (res) {
                        vm.routeInfo.shippingVessels = res;
                    });
                    vm.showSchedules = true;
                }
            }).catch(function(error) {
                if(error) alert(error);
            });
        }

    }

}());
