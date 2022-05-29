# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NeovimAT42< Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  url "https://github.com/neovim/neovim.git"
  version "0.8.0"
  license "Apache-2.0"
  revision 4
  head "https://github.com/neovim/neovim.git", branch: "master"

  def install
    args = %W[
      -DCMAKE_INSTALL_PREFIX=#{prefix}
      -DCMAKE_BUILD_TYPE=Release"
    ]

    mkdir ".deps" do
      system "cmake", "../third-party"
      system "make"
    end

    mkdir "build" do
      system "cmake", *args, ".."
      system "make"
      system "make", "install"
    end

  end

  test do
    system "false"
  end
end
