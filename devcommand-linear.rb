require_relative "utils/bun_formula"

class DevcommandLinear < DevcommandBunFormula
  install_package "linear", has_config_files: true
  desc "Linear related helpers"
  # Version will automatically be set via github workflow action
  version "2024.1.16-1705334400"
end
