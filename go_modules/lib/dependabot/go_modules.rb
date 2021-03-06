# frozen_string_literal: true

# These all need to be required so the various classes can be registered in a
# lookup table of package manager names to concrete classes.
require "dependabot/go_modules/file_fetcher"
require "dependabot/go_modules/file_parser"
require "dependabot/go_modules/update_checker"
require "dependabot/go_modules/file_updater"
require "dependabot/go_modules/metadata_finder"
require "dependabot/go_modules/requirement"
require "dependabot/go_modules/version"
