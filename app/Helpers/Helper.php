<?php

if (!function_exists('change_format')) {
    function change_format($date){
        if(isset($date)){
            return date("d-m-Y", strtotime($date));
        }
        else{
            return 'N/A';
        }
    }
}

if (!function_exists('check_empty')) {
    function check_empty($value){
        if(isset($value)){
            return $value;
        }
        else{
            return 'N/A';
        }
    }
}

if (!function_exists('empty_table')) {
    function empty_table($colspan){
        return '<tr class="text-center">
                    <td colspan="'.$colspan.'">No data found.</td>
                </tr>';
    }
}
