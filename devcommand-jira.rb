require_relative "utils/bun_formula"

class DevcommandJira < DevcommandBunFormula
  install_package "jira", has_config_files: true
  desc "Jira related helpers"
  # Version will automatically be set via github workflow action
  version "2026.10.25-1792964464"
end
