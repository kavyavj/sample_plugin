require 'rails/generators'
require 'rails/generators/migration'
require 'active_record'
require 'rails/generators/active_record'

module SamplePlugin
  module Generators
    class SeedGenerator < Rails::Generators::Base
      include Rails::Generators::SeedGenerator

      vendor "seeds.rb" do
        p "seed file test"
      end

      
    end
  end
end