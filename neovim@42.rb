# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NeovimAT42< Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  url "https://github.com/lopesivan/build-neovim.git"
  version "0.8.0"
  license "Apache-2.0"
  revision 4
  head "https://github.com/lopesivan/build-neovim.git", branch: "master"

  def install
      system "/usr/local/bin/bash", "build-neovim.sh", #{prefix}
  end

  test do
    system "false"
  end
end
