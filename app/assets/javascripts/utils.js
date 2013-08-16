if (window.Sislam === undefined) window.Sislam = {};

Sislam.valueMask = function(inputs) {
  // adiciona mascada de valor nos campos
  $.formatCurrency.regions[''] = {
    symbol: '',
    positiveFormat: '%s%n',
    negativeFormat: '(%s%n)',
    decimalSymbol: ',',
    digitGroupSymbol: '.',
    groupDigits: false
  };
  var validate_length = function(e) {
    var self = $(this);
    var value = self.val();
    var exp = /^(\d{1,12}(,(\d{1,2})?)?)?$/;
    if (value.match(exp)) {
      // Comentado para manter o comportamento padrao de erros dos fields
      //Sislam.clean_erro_field(self);
      self.data('invalid-number', false);
    } else {
      // Comentado para manter o comportamento padrao de erros dos fields
      // Sislam.set_error_field(self, 'número inválido.');
      self.data('invalid-number', true);
      // self.val('')
    }
  }

  return inputs.each(function() {
    $(this).keyfilter(/[\d,]/).bind(
      'blur', function() {
        var self = $(this);
        if (!self.data('invalid-number')) {
          $(this).formatCurrency().trigger('money-change');
        }
      }).bind('keyup', validate_length);
  })
}

Sislam.render_highlight = function() {
  var hash = window.location.hash;
  var hmatch = hash.match(/highlight=(\d+)/);
  if (hmatch) {
    var id = hmatch[1];
    var item = $('#'+ id).effect("highlight", {}, 3000);
    Sislam.scrollTo(item);
    //window.location.hash='';
  }
}

Sislam.set_data_defaults_functions = function(name) {
      $('a#last-month').click(function(e) {
        e.preventDefault();

        var last_date = new Date();
        last_date.setMonth(last_date.getMonth()-1);
        last_date.setDate(1);

        $('input#'+name+'_date_gte').datepicker("setDate", last_date);

        last_date = new Date(last_date.getFullYear(), last_date.getMonth() + 1, 0);
        $('input#'+name+'_date_lte').datepicker("setDate", last_date);

        $('span.data-defaults').click();
      });

      $('a#this-month').click(function(e) {
        e.preventDefault();

        var this_date = new Date();
        this_date.setDate(1);

        $('input#'+name+'_date_gte').datepicker("setDate", this_date);

        this_date = new Date(this_date.getFullYear(), this_date.getMonth() + 1, 0);
        $('input#'+name+'_date_lte').datepicker("setDate", this_date);

        $('span.data-defaults').click();
      });

      $('a#last-days').click(function(e) {
        e.preventDefault();

        var last_days = new Date();
        $('input#'+name+'_date_lte').datepicker("setDate", last_days);

        last_days.setDate(last_days.getDate()-15);
        $('input#'+name+'_date_gte').datepicker("setDate", last_days);

        $('span.data-defaults').click();
      });
    }


/****
    Seta a mensagem de erro e o layot no campo passado
*/
Sislam.set_error_field = function(field, msg) {
  if (field.length > 1) {
    field = field.first();
  }
  var parent_div = field.parents('div.input,div.select').first();

  if (!parent_div.hasClass('error')) parent_div.addClass('error');
  if (parent_div.children('small.error:first').length == 0) parent_div.append($('<small>').text(msg).attr('class', 'error'));

}
/*****
  Limpa os status de erros do campo passado
*/
Sislam.clean_erro_field = function(field) {
  var parent_div = field.parents('div.input,div.select').first();
  parent_div.removeClass('error');
  parent_div.children('small:first').remove();
}

Sislam.fixeds = function() {
  var pub = {};
  pub.fixed_pixels = 0;

  pub.set_fixed = function(element) {
    pub.fixed_pixels += element.outerHeight();
  }
  pub.remove_fixed = function(element) {
    pub.fixed_pixels -= element.outerHeight();
  }

  return pub;
}();

Sislam.scrollTo = function(element, time) {
  var scrollTo = element.offset().top-($(window).height()/2);
  $('html, body').animate({
    scrollTop: scrollTo
  }, time | 1000);
}

Sislam.addSpin = function(element) {
  element.addClass('spinner').spin("tiny").children('i').css('visibility', 'hidden');
}

Sislam.removeSpin = function(element) {
  element.removeClass('spinner').children('i').css('visibility', 'visible').siblings('div.spinner').remove();
}

Sislam.formatDate = function(date,format) {
  return $.format.date(date, format);
}

Sislam.translate = function() {
  var pub = {};

  pub.status = function(state) {
    switch(state) {
      case "success":
        return "sucesso"
        break;
      case "error":
        return "erro"
        break;
      case "fail":
        return "falha"
        break;
      case "scheduled":
        return "agendado"
        break;
      case "running":
        return "executando"
        break;
      default:
        return ""
    }
  }

  return pub;
}();

Sislam.flash = function() {
  var pub = {};
  var close = $('<a href="#" class="close">&times;</a>');
  var flash_div = $('#flash');
  if (flash_div.length == 0) {
    flash_div = $('<div>').addClass('flash').appendTo('body');
  }

  var render_flash = function(msg, type) {
    var flash = $('<div>').addClass('alert-box ' + type).attr('data-alert','1').text(msg).append(close.clone());
    flash.hide().prependTo(flash_div).fadeIn(500);
    setTimeout(function() { flash.fadeOut(500); }, 8000);
  }

  pub.add_error = function(msg) {
    render_flash(msg, 'alert');
  }
  pub.add_success = function(msg) {
    render_flash(msg, 'success');
  }

  $('#messages').find('.alert-box').each(function(idx, el) {
    var el = $(el);
    el.find('a').remove();
    if (el.hasClass('success')) {
      pub.add_success(el.text());
    } else if (el.hasClass('alert')) {
      pub.add_error(el.text());
    }
  });

  return pub;
}();


Sislam.manage_cpf_cnpj_field = function(){
  var pub = {};

  pub.init = function(person_type_field, cpf_cnpj_field) {
    person_type_field.bind('change', pub.change_mask_cpf_cnpj(cpf_cnpj_field));

    if (person_type_field.filter(':checked').length == 0) {
      var check = person_type_field.first().attr('checked', 'checked');
      pub.change_mask_cpf_cnpj(cpf_cnpj_field).call(check, undefined);
    } else {
      var check = person_type_field.filter(':checked');
      pub.change_mask_cpf_cnpj(cpf_cnpj_field).call(check, undefined);
    }
  }

  pub.change_mask_cpf_cnpj = function(cpf_cnpj_field) {
    return function(e) {
      var self = $(this);
      var val = self.val();
      if (val==1) {
        cpf_cnpj_field.unmask();
        if (e) cpf_cnpj_field.val('');
        cpf_cnpj_field.mask("999.999.999-99");
        cpf_cnpj_field.prev().contents().filter(function() { return this.nodeType == 3; }).replaceWith(" CPF");
      } else {
        cpf_cnpj_field.unmask();
        if (e) cpf_cnpj_field.val('');
        cpf_cnpj_field.mask("99.999.999/9999-99");
        cpf_cnpj_field.prev().contents().filter(function() { return this.nodeType == 3; }).replaceWith(" CNPJ");
      }
    }
  }

  return pub;
}();

/*
$("#el").spin(); // Produces default Spinner using the text color of #el.
$("#el").spin("small"); // Produces a 'small' Spinner using the text color of #el.
$("#el").spin("large", "white"); // Produces a 'large' Spinner in white (or any valid CSS color).
$("#el").spin({ ... }); // Produces a Spinner using your custom settings.

$("#el").spin(false); // Kills the spinner.
*/
(function($) {
  $.fn.spin = function(opts, color) {
    var presets = {
    "tiny": { lines: 8, length: 4, width: 3, radius: 3 },
    "small": { lines: 8, length: 4, width: 3, radius: 5 },
    "large": { lines: 10, length: 8, width: 4, radius: 8 }
    };

    if (Spinner) {
      return this.each(function() {
        var $this = $(this),
        data = $this.data();
        if (data.spinner) {
          data.spinner.stop();
          delete data.spinner;
        }
        if (opts !== false) {
          if (typeof opts === "string") {
            if (opts in presets) {
              opts = presets[opts];
            } else {
              opts = {};
            }
            if (color) {
              opts.color = color;
            }
          }
          data.spinner = new Spinner($.extend({color: $this.css('color')}, opts)).spin(this);
        }
      });
    } else {
      throw "Spinner class not available.";
    }
  };
})(jQuery);
