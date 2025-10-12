class DevcommandsAll < Formula
  desc "Installs a set of dev tools"
  homepage "https://github.com/cgaube/dev-commands"
  head "https://github.com/cgaube/dev-commands.git", branch: "main"

  # Main Command
  depends_on "cgaube/devcommands/dev-cli"
  # Subcommands
  depends_on "cgaube/devcommands/devcommands-git"
end
