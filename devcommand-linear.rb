require_relative "utils/bun_formula"

class DevcommandLinear < DevcommandBunFormula
  install_package "linear", has_config_files: true
  desc "Linear related helpers"
  # Version will automatically be set via github workflow action
  version "2026.5.1-1777648943"
end
