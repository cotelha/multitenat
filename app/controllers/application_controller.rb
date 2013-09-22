class ApplicationController < ActionController::Base
  around_filter :scope_current_tenant
  before_filter :authenticate_user!
  protect_from_forgery

  private

  def current_tenant
    @current_tenant ||= Tenant.find_by_subdomain!(request.subdomain)
  end
  helper_method :current_tenant

  def scope_current_tenant(&block)
    current_tenant.scope_schema("public", &block)
  end

end
