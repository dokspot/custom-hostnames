Rails.application.routes.draw do

  constraints SubdomainRouter::Constraint do
    root 'subdomains#show'
  end

  constraints(subdomain: SubdomainRouter::Config.default_subdomain) do
    root 'welcome#home'
    resources :accounts
  end
end
