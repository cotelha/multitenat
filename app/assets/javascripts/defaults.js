if (window.Sislam === undefined) window.Sislam = {};

Sislam.defaults = {
  index: function() {
    var priv = {};
    var pub = {};

    pub.init = function() {
      // $('#passaport_user_account_account_uuid').bind('change', priv.select_new_bind);
      // $('#passaport_user_account_account_new').bind('change', priv.radio_new_bind);
      // $('#passaport_user_account_account_name').bind('change', priv.account_name_new_bind);
    }

    priv.account_name_new_bind = function(e) {
      var self = $(this);
      var select_uuid = $('#passaport_user_account_account_uuid');
      select_uuid.val('').trigger('change').trigger('liszt:updated');
      $("#passaport_user_account_account_new").attr('checked');
    }

    priv.radio_new_bind = function(e) {
      var self = $(this);
      var select_uuid = $('#passaport_user_account_account_uuid');
      if (self.is(':checked')) {
        select_uuid.val('').trigger('change').trigger('liszt:updated');
      }
    }

    priv.select_new_bind = function(e) {
      var self = $(this);
      var radio_new = $('#passaport_user_account_account_new');
      if (self.val() != "") {
        radio_new.removeAttr('checked');
        $('#passaport_user_account_account_name').val("");
      }
    }

    return pub;
  }()
};
