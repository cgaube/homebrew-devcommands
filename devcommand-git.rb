require_relative "utils/bun_formula"

class DevcommandGit < DevcommandBunFormula
  install_package "git"
  desc "Git related helpers"
  # Version will automatically be set via github workflow action
  version "2026.4.25-1777137600"
end
