
<!-- main heading -->
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">Cargo Destinations</h3>
        <page-loading ng-show="!vm.ready"></page-loading>
    </div>
</div>

<div class="row" ng-show="vm.ready">
    <div class="col-md-4 col-md-offset-4">

        <div class="panel panel-default">

            <!-- heading -->
            <div class="panel-heading">
                <div class="panel-title text-center">View Shipping Schedules</div>
            </div>

            <div class="panel-body">

                <div ng-show="!vm.showSchedules">
                    <!-- From Port -->
                    <div class="form-group">
                        <label>From:</label>
                        <select ng-model="vm.fromPort" class="form-control">
                            <option ng-repeat="x in vm.locations" value="@{{x.id}}">@{{ x.location }}</option>
                        </select>
                    </div>

                    <!-- To Port -->
                    <div class="form-group">
                        <label>To:</label>
                        <select ng-model="vm.toPort" class="form-control">
                            <option ng-repeat="x in vm.locations" value="@{{x.id}}">@{{ x.location }}</option>
                        </select>
                    </div>

                    <!-- Errors -->
                    <div class="alert alert-danger" role="alert" ng-if="vm.errors">
                        <ul ng-repeat="error in vm.errors">
                            <li ng-bind="error"></li>
                        </ul>
                    </div>

                    <!-- Submit -->
                    <div class="form_submit">
                        <img ng-show="vm.loading" src='/client/images/preloader.gif' alt='preloader gif'>
                        <button ng-show="!vm.loading"  ng-click="vm.loadShippingInfo()" class="btn btn-primary pull-right">Submit</button>
                    </div>
                </div>
                <div ng-show="vm.showSchedules">
                    <!-- Image -->
                    <div class="form-group">
                        <img ng-src="@{{vm.routeInfo.image}}" width="320" alt="Image" />
                    </div>

                    <!-- From Port -->
                    <div class="form-group">
                        <label>From:</label>
                        <span ng-bind="vm.routeInfo.fromPortName"></span>
                    </div>

                    <!-- To Port -->
                    <div class="form-group">
                        <label>To:</label>
                        <span ng-bind="vm.routeInfo.toPortName"></span>
                    </div>

                    <!-- Transit Time -->
                    <div class="form-group">
                        <label>Transit Time:</label>
                        <span ng-bind="vm.routeInfo.transit_time"></span>
                    </div>

                    <!-- Services Available -->
                    <div class="form-group">
                        <label>Services Available:</label>
                        <ul>
                            <li ng-repeat="service in vm.routeInfo.shippingServices">@{{ service }}</li>
                        </ul>
                    </div>

                    <!-- Types of Cargo -->
                    <div class="form-group">
                        <label>Types of Cargo:</label>
                        <ul>
                            <li ng-repeat="cargo in vm.routeInfo.shippingCargoes">@{{ cargo }}</li>
                        </ul>
                    </div>

                    <!-- Notes -->
                    <div class="form-group">
                        <label>Notes:</label>
                        <span ng-bind="vm.routeInfo.notes"></span>
                    </div>

                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Vessels in Service</th>
                            <th>ETD @{{ vm.routeInfo.fromPortName }}</th>
                            <th>ETA @{{ vm.routeInfo.toPortName }}</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <ul>
                                        <li ng-repeat="vessel in vm.routeInfo.shippingVessels">@{{ vessel }}</li>
                                    </ul>
                                </td>
                                <td>
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Day</th>
                                            <th>Time</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr ng-repeat="schedule in vm.schedules | orderBy:'-'">
                                            <td>@{{ schedule.etd_day }}</td>
                                            <td>@{{ schedule.etd_time | formatTime }}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td>
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Day</th>
                                            <th>Time</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr ng-repeat="schedule in vm.schedules | orderBy:'-'">
                                            <td>@{{ schedule.eta_day }}</td>
                                            <td>@{{ schedule.eta_time | formatTime }}</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn" ng-click="vm.goBack()">Back</button>
                </div>

            </div> <!-- / panel body -->

        </div>
    </div>
</div>