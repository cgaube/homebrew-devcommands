require_relative "utils/bun_formula"

class DevcommandUtils < DevcommandBunFormula
  install_package "utils"
  desc "Misc utils"
  # Version will automatically be set via github workflow action
  version "2026.6.18-1781746623"
end
