require_relative "utils/bun_formula"

class DevcommandGitTui < DevcommandBunFormula
  install_package "git-tui"
  desc "Terminal UI for branches and stacked GitHub pull requests"
  # Version will automatically be set via github workflow action
  version "2026.11.15-1794710505"
end
