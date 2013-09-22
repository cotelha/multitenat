// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.maskedinput
//= require jquery.formatCurrency
//= require jquery.maskMoney
//= require jquery.ui.effect
//= require jquery.ui.effect-highlight
//= require jquery.ui.datepicker
//= require jquery.ui.autocomplete
//= require jquery.ui.datepicker-pt-BR
//= require jquery.dateFormat
//= require spin.min.js
//= require jquery-tmpl
//= require ckeditor/init
//= require_tree .

function debug(msg) {
  if (window.console) {
    console.info(msg);
  }
}

$(function() {

  // init geral do sistema
  Sislam.actual = {};
  Sislam.actual.controller = $('body').attr('data-controller');
  Sislam.actual.action = $('body').attr('data-action');
  try { Sislam[Sislam.actual.controller][Sislam.actual.action]['init'].call();
  } catch(e) {
    debug(e);
    debug("\"Sislam." + Sislam.actual.controller + "." + Sislam.actual.action + ".init()\" não existe.");
  }

  $(".cnpj").mask("99.999.999/9999-99");
  $(".cpf").mask("999.999.999-99");
  $(".tel").mask("(99) 9999.9999");

  Sislam.valueMask($("input.money"));

  $('.datepicker').datepicker({format: "dd/mm/yyyy", autoclose: true, todayHighlight: true, language: "pt-BR"}).mask("99/99/9999");

});
