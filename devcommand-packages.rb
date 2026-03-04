require_relative "utils/bun_formula"

class DevcommandPackages < DevcommandBunFormula
  install_package "packages"
  desc "Manage dev command packages"
  # Version will automatically be set via github workflow action
  version "2026.3.4-1772666664"
end
