# frozen_string_literal: true

require_relative 'copy_assets_generator'

module ClientSideValidations
  module Generators
    class InstallGenerator < CopyAssetsGenerator
      def copy_initializer
        source_paths << File.expand_path('../templates/client_side_validations', __dir__)
        copy_file 'initializer.rb', 'config/initializers/client_side_validations.rb'
      end

      def self.installation_message
        "Copies initializer into config/initializers and #{super.downcase}"
      end

      desc installation_message
    end
  end
end
