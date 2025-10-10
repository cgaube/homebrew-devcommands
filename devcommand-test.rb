class DevcommandTest < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-commands"
  head "https://github.com/cgaube/dev-commands.git", branch: "main"

  depends_on "bun" => :build

  def install
    cd "packages/test" do
      # install deps for just this package
      system "bun", "install", "--no-save"
      # compile it into a single binary
      system "bun", "run", "compile"
      # Install the bin/* in the devcommands homebrew etc folder
      (prefix/"etc/devcommands").install "bin"
    end
  end
end
