class DevCli < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-cli"

  # We will manually update this version when releasing new code
  url "https://github.com/cgaube/dev-cli.git", :using => :git, :tag => "main"
  version "1.1"

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make"
    bin.install "dev"
    (etc/"devcommands").install Dir["devcommands/*"]
  end
end
