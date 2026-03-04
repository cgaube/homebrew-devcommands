class DevcommandBunFormula < Formula
  def self.inherited(subclass)
     super
     subclass.instance_eval do
       homepage "https://github.com/cgaube/dev-commands"
       # Use the main branch as the source for all packages
       url "https://github.com/cgaube/dev-commands.git", :using => :git, :tag => "main"

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

        # 1. First, install it to the Cellar (this prevents the "Empty installation" error)
        # This puts it in /opt/homebrew/Cellar/devcommand-*/VERSION/lib/devcommands/
        (lib/"devcommands").install "bin/#{package_name}"

        # 2. Then, symlink it into the global etc discovery folder
        (etc/"devcommands").install_symlink (lib/"devcommands/#{package_name}")
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
