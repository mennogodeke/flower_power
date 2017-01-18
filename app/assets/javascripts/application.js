// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require toastr
//= require_tree .

jQuery(document).ready(function(){
    jQuery('#rotterdam').on('click', function(event) {
        jQuery('.orders-rotterdam').toggle('show');
    });
    jQuery('#amsterdam').on('click', function(event) {
        jQuery('.orders-amsterdam').toggle('show');
    });
    jQuery('#utrecht').on('click', function(event) {
        jQuery('.orders-utrecht').toggle('show');
    });
    jQuery('#almere').on('click', function(event) {
        jQuery('.orders-almere').toggle('show');
    });
    jQuery('#all-orders-button').on('click', function(event) {
        jQuery('.all-orders').toggle('show');
    });
});