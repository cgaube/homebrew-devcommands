require_relative "utils/bun_formula"

class DevcommandLinear < DevcommandBunFormula
  install_package "linear", has_config_files: true
  desc "Linear related helpers"
  # Version will automatically be set via github workflow action
  version "2026.3.4-1772666664"
end
