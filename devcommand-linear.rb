require_relative "utils/bun_formula"

class DevcommandLinear < DevcommandBunFormula
  install_package "linear", has_config_files: true
  desc "Linear related helpers"
end
