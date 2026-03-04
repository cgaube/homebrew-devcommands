class DevCli < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-cli"
  head "https://github.com/cgaube/dev-cli.git", branch: "main"

  # We will manually update this version when releasing new code
  version "1.0"

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make"
    bin.install "dev"
    (prefix / "etc").install "devcommands"
  end
end
