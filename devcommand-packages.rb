require_relative "utils/bun_formula"

class DevcommandPackages < DevcommandBunFormula
  install_package "packages"
  desc "Manage dev command packages"
  # Version will automatically be set via github workflow action
  version "2026.6.18-1781746623"
end
