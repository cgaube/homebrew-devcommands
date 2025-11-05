require_relative "utils/bun_formula"

class DevcommandLinear < DevcommandBunFormula
  install_package "linear", has_config_files: true
  desc "Linear related helpers"
  # Version will automatically be set via github workflow action
  version "2025.11.5-1762320997"
end
