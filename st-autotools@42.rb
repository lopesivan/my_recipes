# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class StAutotoolsAT42 < Formula
  desc "st is a simple terminal implementation for X."
  homepage "git@github.com:lopesivan/st-autotools.git"
  url "git@github.com:lopesivan/st-autotools.git.git",
    revision: "41a625f2d7a62a4d05c9a66b831640740af91ff8"
  version "1.0.1"
#  head "git@github.com:lopesivan/st-autotools.git",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-41aeaf5a2c6beaf15f8bfa92c57facb421f492bf-20250804.diff'
    sha256 '651bb16fccbbffd3ddef66b2ceddcad8710498c4a4a4c87fcb357b2d45156912'
  end
  def install
    system './gera-opcao.sh', 'enable', 'debug', '"Ativa modo de depuração"'
    system 'sh', './autogen.sh'
    system './configure'
    system 'make'
    #system 'make', "PREFIX=#{prefix}", 'install'
  end
  
  
  test do
    system "false"
  end
end
