(function() {
  'use strict';

  angular
    .module('app.filters', [])
    .filter('formatTime', FormatTimeFilter);

  function FormatTimeFilter($filter) {
    return function(timeString) {
      /*var time = timeString.split(':');
      var date = new Date();
      date.setHours(time[0]);
      date.setMinutes(time[1]);
      return $filter('date')(date, 'h:mm a');*/
      var datetime = new Date(timeString);
      var days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
      var months = [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
      ];
      //var date = datetime.toLocaleDateString();
      var time = datetime.toLocaleTimeString();
      return days[datetime.getDay()]+' - '+months[datetime.getMonth()]+'/'+datetime.getDate()+' - '+time;
    };
  }
})();
