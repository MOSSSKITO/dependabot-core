# frozen_string_literal: true

require "dependabot/utils/ruby/requirement"

# TODO: in due course, these "registries" should live in a wrapper gem, not
#       dependabot-core.
module Dependabot
  module Utils
    @version_classes = {
      "bundler" => Gem::Version,
      "submodules" => Gem::Version,
      "docker" => Gem::Version
    }

    def self.version_class_for_package_manager(package_manager)
      version_class = @version_classes[package_manager]
      return version_class if version_class

      raise "Unsupported package_manager #{package_manager}"
    end

    def self.register_version_class(package_manager, version_class)
      @version_classes[package_manager] = version_class
    end

    @requirement_classes = {
      "bundler" => Utils::Ruby::Requirement,
      "submodules" => Utils::Ruby::Requirement,
      "docker" => Utils::Ruby::Requirement
    }

    def self.requirement_class_for_package_manager(package_manager)
      requirement_class = @requirement_classes[package_manager]
      return requirement_class if requirement_class

      raise "Unsupported package_manager #{package_manager}"
    end

    def self.register_requirement_class(package_manager, requirement_class)
      @requirement_classes[package_manager] = requirement_class
    end
  end
end
