# Autogenerated (Do not edit)

require "formula"
require_relative "lib/private_strategy"

class Aardy < Formula
  desc "aardy is Aardvark's CLI"
  homepage "https://aardvarklabs.com/"
  url "https://github.com/aardlabs/cli-release/releases/download/0.10.11/aardy-darwin-amd64-0.10.11.zip"
  sha256 ""
  head "https://github.com/aardlabs/homebrew-cli.git"
  # depends_on "coreutils"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"aardy"
    (bash_completion/"aardy").write `#{bin}/aardy completion -s bash`
    (fish_completion/"aardy.fish").write `#{bin}/aardy completion -s fish`
    (zsh_completion/"_aardy").write `#{bin}/aardy completion -s zsh`
  end

  def caveats
    <<~EOS
      aardy is the aardvark CLI.

      * Once installed, you can run the following command to help get started

        $ aardy --help

    EOS
  end

  # Homebrew requires tests.
  test do
    assert_match "0.10.11", shell_output("#{bin}/aardy --version", 2)
  end
end