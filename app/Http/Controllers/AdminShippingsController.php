<?php 
namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use Mail;
use Hash;
use Cache;
use Validator;

class AdminShippingsController extends \crocodicstudio\crudbooster\controllers\CBController {

    public function __construct() {
        $this->table              = "shippings";
        $this->primary_key        = "id";
        $this->title_field        = "id";
        $this->limit              = 20;
        $this->index_orderby      = ["id"=>"desc"];
        $this->button_show_data   = true;        
        $this->button_new_data    = true;
        $this->button_delete_data = true;
        $this->button_sort_filter = true;        
        $this->button_export_data = true;
        $this->button_table_action = true;
        $this->button_import_data = true;

        $this->col = array();
		$this->col[] = array("label"=>"From Port","name"=>"from_port",'join'=>'shipping_locations,location');
		$this->col[] = array("label"=>"To Port","name"=>"to_port",'join'=>'shipping_locations,location');
		$this->col[] = array("label"=>"Transit Time","name"=>"transit_time" );
		$this->col[] = array("label"=>"Notes","name"=>"notes" );

		$this->form = array();
		$this->form[] = array("label"=>"From Port","name"=>"from_port","type"=>"select","required"=>TRUE,"datatable"=>"shipping_locations,location","validation"=>"required");
		$this->form[] = array("label"=>"To Port","name"=>"to_port","type"=>"select","required"=>TRUE,"datatable"=>"shipping_locations,location","validation"=>"required");
		$this->form[] = array("label"=>"Transit Time","name"=>"transit_time","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"Notes","name"=>"notes","type"=>"textarea","validation"=>"string|min:5|max:5000");
        $this->form[] = array("label"=>"Services Available","name"=>"services","type"=>"checkbox","required"=>TRUE,"datatable"=>"shipping_services,name","validation"=>"required");
        $this->form[] = array("label"=>"Types of Cargo","name"=>"cargoes","type"=>"checkbox","required"=>TRUE,"datatable"=>"shipping_cargoes,name","validation"=>"required");
        $this->form[] = array("label"=>"Vessels in Service","name"=>"vessels","type"=>"checkbox","required"=>TRUE,"datatable"=>"shipping_vessels,name","validation"=>"required");


        /* 
        | ---------------------------------------------------------------------- 
        | Add relational module
        | ----------------------------------------------------------------------     
        | @label       = Name of sub module 
        | @path        = The path of module, see at module generator
        | @foreign_key = required.  
        | 
        */
        $this->sub_module     = array();




        /* 
        | ---------------------------------------------------------------------- 
        | Add More Action Button / Menu
        | ----------------------------------------------------------------------     
        | @label       = Label of action 
        | @route       = URL , you can use alias to get field, prefix [, suffix ], 
        |                e.g : [id], [name], [title], etc ...
        | @icon        = font awesome class icon         
        | 
        */
        $this->addaction = array();




                
        /* 
        | ---------------------------------------------------------------------- 
        | Add alert message to this module at overheader
        | ----------------------------------------------------------------------     
        | @message = Text of message 
        | @type    = warning,success,danger,info        
        | 
        */
        $this->alert        = array();
                

        
        /* 
        | ---------------------------------------------------------------------- 
        | Add more button to header button 
        | ----------------------------------------------------------------------     
        | @label = Name of button 
        | @url   = URL Target
        | @icon  = Icon from Awesome.
        | 
        */
        $this->index_button = array();       


        
        /* 
        | ---------------------------------------------------------------------- 
        | Add element to form at bottom 
        | ----------------------------------------------------------------------     
        | push your html / code in object array         
        | 
        */
        $this->form_add     = array();       



        
        /*
        | ---------------------------------------------------------------------- 
        | You may use this bellow array to add statistic at dashboard 
        | ---------------------------------------------------------------------- 
        | @label, @count, @icon, @color 
        |
        */
        $this->index_statistic = array();




        /*
        | ---------------------------------------------------------------------- 
        | Add additional view at top or bottom of index 
        | ---------------------------------------------------------------------- 
        | @view = view location 
        | @data = data array for view 
        |
        */
        $this->index_additional_view = array();



        /*
        | ---------------------------------------------------------------------- 
        | Add javascript at body 
        | ---------------------------------------------------------------------- 
        | javascript code in the variable 
        | $this->script_js = "function() { ... }";
        |
        */
        $this->script_js = NULL;



        /*
        | ---------------------------------------------------------------------- 
        | Include Javascript File 
        | ---------------------------------------------------------------------- 
        | URL of your javascript each array 
        | $this->load_js[] = asset("myfile.js");
        |
        */
        $this->load_js = array();



        //No need chanage this constructor
        $this->constructor();
    }


    /*
    | ---------------------------------------------------------------------- 
    | Hook for manipulate query of index result 
    | ---------------------------------------------------------------------- 
    | @query = current database query 
    |
    */
    public function hook_query_index(&$query) {
        //Your code here
            
    }

    /*
    | ---------------------------------------------------------------------- 
    | Hook for manipulate row of index table html 
    | ---------------------------------------------------------------------- 
    | @html for row html 
    | @data for get data row
    | You should using foreach
    |
    */    
    public function hook_row_index(&$html,$data) {
        //Your code here

    }

    /*
    | ---------------------------------------------------------------------- 
    | Hook for manipulate data input before add data is execute
    | ---------------------------------------------------------------------- 
    | @arr
    |
    */
    public function hook_before_add(&$postdata) {
        //Your code here

    }

    /* 
    | ---------------------------------------------------------------------- 
    | Hook for execute command after add function called 
    | ---------------------------------------------------------------------- 
    | @id = last insert id
    | 
    */
    public function hook_after_add($id) {        
        //Your code here

    }

    /* 
    | ---------------------------------------------------------------------- 
    | Hook for manipulate data input before update data is execute
    | ---------------------------------------------------------------------- 
    | @postdata = input post data 
    | @id       = current id 
    | 
    */
    public function hook_before_edit(&$postdata,$id) {        
        //Your code here

    }

    /* 
    | ---------------------------------------------------------------------- 
    | Hook for execute command after edit function called
    | ----------------------------------------------------------------------     
    | @id       = current id 
    | 
    */
    public function hook_after_edit($id) {
        //Your code here 

    }

    /* 
    | ---------------------------------------------------------------------- 
    | Hook for execute command before delete function called
    | ----------------------------------------------------------------------     
    | @id       = current id 
    | 
    */
    public function hook_before_delete($id) {
        //Your code here

    }

    /* 
    | ---------------------------------------------------------------------- 
    | Hook for execute command after delete function called
    | ----------------------------------------------------------------------     
    | @id       = current id 
    | 
    */
    public function hook_after_delete($id) {
        //Your code here

    }



    //By the way, you can still create your own method in here... :) 


}