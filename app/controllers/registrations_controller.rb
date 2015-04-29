class RegistrationsController < Devise::RegistrationsController
  prepend_around_filter :scope_current_tenant
end
