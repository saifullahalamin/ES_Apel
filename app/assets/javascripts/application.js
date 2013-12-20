// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// require jsapi
//= require highcharts
//= require highcharts/highcharts-more
//= require chartkick
//= require dataTables/jquery.dataTables.bootstrap
//= require dataTables/extras/ZeroClipboard.js

$(function(){
	$("a[data-toggle=popover]").popover().click(function(e) {
		e.preventDefault()
	});

	$('#tanya_pakar .panel-success .checkbox').on("change",function(){ 
		$('#tanya_pakar .panel-info tbody').prepend($('#tanya_pakar .panel-success tbody :checkbox:checked').parents('tr'))
		$('#tanya_pakar .panel-info .checkbox').on("change",function(){ 
			$('#tanya_pakar .panel-success tbody').prepend($('#tanya_pakar .panel-info tbody :checkbox:not(:checked)').parents('tr'))
		});
	});

	$('#tanya_pakar input[name=commit]').click(function(){
		var ids = $('#tanya_pakar .panel-info tbody :checkbox:checked').map(function() {return this.value; }).get().join();
		$('#tanya_pakar input[name=ids]').val(ids);
	});

	$('#tanya_pakar button[name=clear]').click(function(){
        $('#tanya_pakar .panel-info tbody :checkbox:checked').prop('checked', false);
        $('#tanya_pakar .panel-success tbody').prepend($('#tanya_pakar .panel-info tbody :checkbox:not(:checked)').parents('tr'));     
    });
    // For fluid containers
	$('table#symptoms').dataTable({
	  "sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	  "sPaginationType": "bootstrap"
	});

    // $('table#symptoms').dataTable();

});

