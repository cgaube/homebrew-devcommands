class DevCommands < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-commands"
  url "https://github.com/cgaube/dev-command/archive/v0.0.1.tar.gz" # TODO: update version
  sha256 "..." # TODO: update sha256
  head "https://github.com/cgaube/dev-command.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "dev", "."
    bin.install "dev"
  end

  test do
    system "#{bin}/dev", "version"
  end
end
