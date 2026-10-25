require_relative "utils/bun_formula"

class DevcommandRun < DevcommandBunFormula
  install_package "run"
  desc "Run project scripts from any package manager"
  # Version will automatically be set via github workflow action
  version "2026.10.25-1792964464"
end
