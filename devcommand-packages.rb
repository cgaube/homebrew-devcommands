require_relative "utils/bun_formula"

class DevcommandPackages < DevcommandBunFormula
  install_package "package"
  desc "Manage dev command packages"
end
