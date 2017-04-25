Class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin }
    request.subdomain.present && !subdomain.include(request.subdomain)
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :projects
  end
  resources :users
end
