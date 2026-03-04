class DevCli < Formula
  desc "DevCommands modern multi-CLI applications"
  homepage "https://github.com/cgaube/dev-cli"

  # We will manually update this version when releasing new code
  url "https://github.com/cgaube/dev-cli.git", :using => :git, :branch => "main"
  version "1.1"

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make"

    # 1. Install the main entry point to the standard PATH
    bin.install "dev"

    # 2. Install helper scripts/binaries to libexec (the Cellar)
    # This ensures 'version' and any future helpers are version-tracked
    if File.directory?("devcommands") && !Dir.empty?("devcommands")
      libexec.install Dir["devcommands/*"]

      # 3. Symlink the contents of libexec into the shared discovery folder
      # This replaces the "real" files with links, keeping /etc clean
      Dir.glob("#{libexec}/*") do |file|
        (etc/"devcommands").install_symlink file
      end
    end
  end
end
