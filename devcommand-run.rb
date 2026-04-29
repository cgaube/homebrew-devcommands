require_relative "utils/bun_formula"

class DevcommandRun < DevcommandBunFormula
  install_package "run"
  desc "Run project scripts from any package manager"
  # Version will automatically be set via github workflow action
  version "2026.4.29-1777481341"
end
