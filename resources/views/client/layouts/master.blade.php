@include('client.layouts.header')

<div id="wrapper">

    <!-- page wrapper for angular views-->
    <div id="page-wrapper">

        <!-- Angular views -->
        <div ui-view id="ui-view"></div>

    </div>
    
</div>

@include('client.layouts.footer')