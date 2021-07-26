jQuery(document).ready(function($) {

	// 'use strict';

  //***************************
    // Url base class add
    //***************************

  var url = window.location.href;
  var target = jQuery('a[href="'+url+'"]');
  target.addClass('mm-active');

  $('.mm-active').parents('ul').addClass('mm-show');
  $('.mm-show').parents('li').addClass('mm-active');
  // end
});

$('.hide-btn').hide();
$('.show-btn').click(function () {
    $('.hide-btn').show();
    $(this).hide();
    $('.margin-r').css('margin','0');
});

$(document).on('click','.fa-times',function () {
    var field= $(this).siblings('input');
    field.val('');
});

function Validate(event) {
    var regex = new RegExp("^[+0-9]");
    var key = String.fromCharCode(event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
        event.preventDefault();
        return false;
    }
}

////////////////// generic of pagination plugin //////////////////////

function pageloading(page, url) {
    $.blockUI({  message: '<img src="'+window.location.origin+'/admin_assets/images/loader.jpg" style="height: 100px;" />',
        css: {border: 'none', backgroundColor:'transparent'} });
    $('#pagination_tags').pagination({
        total: 1, // 总数据条数
        current: 1, // 当前页码
        length: 1, // 每页数据量
        size: 1, // 显示按钮个数
        prev: 'Previous',
        next: 'Next',
        ajax: function (options, refresh, $target) {
            $.ajax({
                type: "post",
                url: url,
                data: {
                    "_token": $('#csrf-token')[0].content,
                    'page_num': options.current,
                },
                success: function (data) {
                    data=JSON.parse(data);

                    $('#append_list').html('');
                    $('#append_list').append(data['html']);
                    $.unblockUI();

                    refresh({
                        total: data['total'], // 可选
                        length: 10, // 可选
                    });
                },
                error: function () {
                    $.unblockUI();
                    $.alert('Something went wrong.');
                }
            });
        }
    });
}
