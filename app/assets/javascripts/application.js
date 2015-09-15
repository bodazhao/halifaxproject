// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(function() {
  return $(document).on('change', '#courts_select', function(evt) {
    return $.ajax('/events/update_houses', {
      type: 'GET',
      dataType: 'script',
      data: {
        court_id: $("#courts_select option:selected").val()
      },
      error: function(jqXHR, textStatus, errorThrown) {
        return console.log("AJAX Error: " + textStatus);
      },
      success: function(data, textStatus, jqXHR) {
        return console.log("Dynamic court select OK!");
      }
    });
  });
});
