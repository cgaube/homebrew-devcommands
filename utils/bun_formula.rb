class DevcommandBunFormula < Formula
  def self.inherited(subclass)
     super
     subclass.instance_eval do
       homepage "https://github.com/cgaube/dev-commands"
       head "https://github.com/cgaube/dev-commands.git", branch: "main"
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
      define_method(:uninstall) do
        # Remove the config folder explicitly
        rm_rf etc/"devcommands-config/#{package_name}"
      end

      define_method(:caveats) do
        <<~EOS
          Configuration files are located at: #{etc}/devcommands-config/#{package_name}
          These files will be removed automatically when you uninstall this formula.
          -----
          Note: Secret configurations are stored in the keychain and are not removed automatically.
          To clear them, run: `dev #{package_name} config clear` before uninstalling this formula.
        EOS
      end
    end
  end
end
