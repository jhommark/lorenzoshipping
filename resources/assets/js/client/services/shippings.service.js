(function() {

    'use strict';

    angular
        .module("app.services")
        .factory("Shipping", Shipping);

    Shipping.$inject = ['$resource'];
    /* @ngInject */
    function Shipping($resource) {
        return $resource('/api/shippings/:id', {id: '@_id'}, {
            update: {
                method: 'PUT'
            }
        });
    }

}());