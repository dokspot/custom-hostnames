module Constraint
  class Domain
    def matches?(request)
      puts "Trying request: #{request}"
      Account.exists?(host_mapping: request.host)
    end
  end
end
