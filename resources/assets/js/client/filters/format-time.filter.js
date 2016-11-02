(function() {
  'use strict';

  angular
    .module('app.filters', [])
    .filter('formatTime', FormatTimeFilter);

  function FormatTimeFilter($filter) {
    return function(timeString) {
      var time = timeString.split(':');
      var date = new Date();
      date.setHours(time[0]);
      date.setMinutes(time[1]);
      return $filter('date')(date, 'h:mm a');
    };
  }
})();
