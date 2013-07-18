require "client_z/version"
require "typhoeus"
require 'multi_json'

module ClientZ
  autoload :Configuration, 'client_z/configuration'
  autoload :Product, 'client_z/product'
  autoload :ProductSearcher, 'client_z/product_searcher'
end
