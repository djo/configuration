$(function () {
  var newSettingLink = $('#new_setting_link');
  var newSettingBox = $('#new_setting_box');
  
  var showNewSettingForm = function (event, data) {
    $('#new_setting_box').html(data);
  }
  
  var hideForm = function (event, data) {
    var form = $(this).parents('form');
    form.hide();
  }
  
  newSettingLink.bind('ajax:success', showNewSettingForm);
  newSettingBox.delegate('form .cancel_link', 'click', hideForm);
});
