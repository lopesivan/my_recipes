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
    args_third_party = %W[
      --no-warn-unused-cli
      -DCMAKE_C_COMPILER:FILEPATH=/usr/local/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/local/bin/clang++
    ]

    args = %W[
      --no-warn-unused-cli
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_C_COMPILER:FILEPATH=/usr/local/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/local/bin/clang++
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir ".deps" do
      system "/usr/local/bin/cmake", *args_third_party, "../third-party"
      system "make"
    end

    mkdir "build" do
      system "/usr/local/bin/cmake", *args, ".."
      system "make"
      system "make", "install"
    end

  end

  test do
    system "false"
  end
end
