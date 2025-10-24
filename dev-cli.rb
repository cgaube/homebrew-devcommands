class DevCli < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-cli"
  head "https://github.com/cgaube/dev-cli.git", branch: "main"

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make"
    bin.install "dev"
    (prefix / "etc").install "devcommands"
  end

end
