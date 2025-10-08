class DevCli < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-cli"
  head "https://github.com/cgaube/dev-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "dev"
    (prefix / "etc").install "devcommands"
  end

  test do
    system "#{bin}/dev", "version"
  end
end
