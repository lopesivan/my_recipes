# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NeovimAT9e1474409< Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  url "https://github.com/neovim/neovim.git"
  version "0.8.0"
  license "Apache-2.0"
  revision 4
  head "https://github.com/neovim/neovim.git", branch: "master"

  def install
    system "make", "CMAKE_BUILD_TYPE=RelWithDebInfo", "CMAKE_INSTALL_PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
