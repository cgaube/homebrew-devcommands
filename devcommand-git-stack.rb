require_relative "utils/bun_formula"

class DevcommandGitStack < DevcommandBunFormula
  install_package "git-stack"
  desc "Terminal UI for stacked GitHub pull requests"
  # Version will automatically be set via github workflow action
  version "2026.10.8-1791476260"
end
