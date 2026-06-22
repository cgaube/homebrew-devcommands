require_relative "utils/bun_formula"

class DevcommandGit < DevcommandBunFormula
  install_package "git"
  desc "Git related helpers"
  # Version will automatically be set via github workflow action
  version "2026.6.22-1782101204"
end
