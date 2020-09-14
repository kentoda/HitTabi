// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets  
//= require summernote/summernote-bs4.min
//= require summernote-init
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$.summernote.options.lang = "ja-JP";

$('#sampleModal').on('show.bs.modal', function (event) {
		var button = $(event.relatedTarget);
		var recipient = button.data('recipient');
		var modal = $(this);
		modal.find('.modal-title').text(recipient + 'へのメッセージ');
	});



// indexスクロール
$(function(){
    $(window).scroll(function (){
        // .each()で、「#g」が付いた要素1つずつに順番に処理を行うことを指定
        $('.g').each(function(){
            var position = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > position - windowHeight + 200){
              $(this).addClass('active');
            }
        });
    });
});