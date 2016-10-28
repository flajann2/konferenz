require 'opal_ujs'
require 'select2'
require_tree '.'
require 'turbolinks'

Document.on 'turbolinks:load' do |evt|
  Element.find('select').JS.select2
end

