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
    return false;
  }
  
  var addNewSetting = function (event, data) {
    settings.prepend(data);
    $('form', newSettingBox).hide();
  }
  
  var showErrors = function (event, xhr) {
    $(this).replaceWith(xhr.responseText);
  }
  
  var removeSetting = function () {
    var setting = $(this).parents('.setting');
    setting.remove();
  }
  
  var showEditForm = function (event, data) {
    var setting = $(this).parents('.setting');
    $('.form_box', setting).html(data);
  }
  
  var replaceSetting = function (event, data) {
    var setting = $(this).parents('.setting');
    setting.html(data);
  }
  
  // New setting form set up
  newSettingLink.bind('ajax:success', showNewSettingForm);
  newSettingBox.delegate('form .cancel_link', 'click', hideForm);
  newSettingBox.delegate('form', 'ajax:success', addNewSetting);
  newSettingBox.delegate('form', 'ajax:error', showErrors);
  
  // Setting list set up
  settings.delegate('.setting .delete_link', 'ajax:success', removeSetting);
  settings.delegate('.setting .edit_link', 'ajax:success', showEditForm);
  settings.delegate('.setting form .cancel_link', 'click', hideForm);
  settings.delegate('.setting form', 'ajax:success', replaceSetting);
  settings.delegate('.setting form', 'ajax:error', showErrors);
});
