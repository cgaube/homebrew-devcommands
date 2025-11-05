class DevcommandBunFormula < Formula
  def self.inherited(subclass)
     super
     subclass.instance_eval do
       homepage "https://github.com/cgaube/dev-commands"
       url "https://github.com/cgaube/dev-commands/archive/refs/heads/main.zip"
       depends_on "oven-sh/bun/bun" => :build
       depends_on "cgaube/devcommands/dev-cli"
    end
  end

  def self.install_package(package_name, has_config_files: false)
    define_method(:install) do
      cd "packages/#{package_name}" do
        # install deps for just this package
        system "bun", "install", "--no-save"
        # compile it into a single binary
        system "bun", "run", "compile"
        # Install the bin/* in the devcommands homebrew etc folder
        (prefix/"etc/devcommands").install "bin/#{package_name}"
      end
    end

    if has_config_files
      define_method(:caveats) do
        <<~EOS
          ! -----
          Configuration files are located at: #{etc}/devcommands-config/#{package_name}
          They are not removed automatically on uninstall.
          To remove them, run: `dev #{package_name} config clear` before uninstalling this formula.
          ! -----
        EOS
      end
    end
  end
end
