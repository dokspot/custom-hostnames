# SubdomainRouter::Config.default_subdomain = 'www'
# SubdomainRouter::Config.domain = 'mywebsite.com'
# SubdomainRouter::Config.tld_components = 1
SubdomainRouter::Config.subdomain_matcher = ->(subdomain, request) {
  Account.find_by(subdomain: subdomain)
}
