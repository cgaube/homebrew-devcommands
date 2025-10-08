class DevCommands < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-commands"
  head "https://github.com/cgaube/dev-commands.git", branch: "main"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "dev"
    etc.install "devcommands"
  end

  test do
    system "#{bin}/dev", "version"
  end
end
