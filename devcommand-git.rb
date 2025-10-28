require_relative "utils/bun_formula"

class DevcommandGit < DevcommandBunFormula
  install_package "git"
  desc "Git related helpers"
end
