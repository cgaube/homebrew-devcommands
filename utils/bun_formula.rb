class DevcommandBunFormula < Formula
   def self.inherited(subclass)
       super
      subclass.instance_eval do
        homepage "https://github.com/cgaube/dev-commands"
        head "https://github.com/cgaube/dev-commands.git", branch: "main"
        depends_on "bun" => :build
      end
    end

  def self.install_package(package_name)
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
  end
end
