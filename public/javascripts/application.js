$(function () {
  var newSettingLink = $('#new_setting_link');
  var newSettingBox = $('#new_setting_box');
  var settings = $('#settings');
  
  var showNewSettingForm = function (event, data) {
    $('#new_setting_box').html(data);
  }
  
  var hideForm = function (event, data) {
    var form = $(this).parents('form');
    form.hide();
  }
  
  var addNewSetting = function (event, data) {
    settings.prepend(data);
    $('form', newSettingBox).hide();
  }
  
  var showErrors = function (event, xhr) {
    $(this).replaceWith(xhr.responseText);
  }
  
  newSettingLink.bind('ajax:success', showNewSettingForm);
  newSettingBox.delegate('form .cancel_link', 'click', hideForm);
  newSettingBox.delegate('form', 'ajax:success', addNewSetting);
  newSettingBox.delegate('form', 'ajax:error', showErrors);
});
