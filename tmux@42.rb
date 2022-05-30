# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TmuxAT42< Formula
  desc "tmux is a terminal multiplexer"
  homepage "https://github.com/tmux/tmux"
  url "https://github.com/tmux/tmux.git"
  version "next-3.4"
  license "Apache-2.0"
  revision 4
  head "https://github.com/tmux/tmux.git", branch: "master"

  def install
    args = %W[
      --prefix=#{prefix}
    ]

    system "sh", "autogen.sh"

    mkdir "release" do
      system "../configure", *args
      system "make", "CC=/usr/bin/gcc", "CXX=/usr/bin/g++"
      system "make", "install"
    end
  end

end
