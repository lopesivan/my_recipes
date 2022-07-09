# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MiscellanyTools < Formula
  desc "Commnad line miscellany tools."
  homepage "https://github.com/lopesivan/miscellany"
  url "https://github.com/lopesivan/miscellany.git",
    branch: "main",
    using: :git
  version "2.1"
  head "https://github.com/lopesivan/miscellany.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    #NVIM_BIN = bakefile.sh cheat-server.sh cht.sh exa fennel lsperm glow harpoon java-lsp.sh snip tmux2 winetricks zeta-note

  end

  test do
    system "false"
  end
end
