
<!-- main heading -->
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">Shippings</h3>
        <page-loading ng-show="!vm.ready"></page-loading>
    </div>
</div>

<div class="row" ng-show="vm.ready">

    <!-- users count -->
    <div class="col-md-4 col-sm-12">
        <select>
            <option>---Select Origin---</option>
            <option ng-repeat="x in vm.shippings">@{{x.from_port}}</option>
        </select>
    </div>

</div>