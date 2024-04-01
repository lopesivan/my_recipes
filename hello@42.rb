# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HelloAT42 < Formula
  desc "O programa hello é uma utilitário simples projetado para imprimir Hello, world! no console."
  homepage "https://github.com/lopesivan/hello"
  url "https://github.com/lopesivan/hello.git",
    revision: "a95871b4a525196ff513ae31ae04f65240ad844e"
  version "1.0.2"
#  head "https://github.com/lopesivan/hello",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hello/hello-custom-3be19e52339a70738bfccea5a9ffe6eb40a2a4ff-20240401.diff'
    sha256 'bdc46c73f524cc5cc754e7267635cbc642307ec3156068427c6a340cfc151338'
  end
  def install
    args = %W[
      --prefix=#{prefix}
    ]
  
    system 'sh', 'autogen.sh'
    system './configure', *args
    system 'make', 'CC=/usr/bin/gcc', 'CXX=/usr/bin/g++'
    system 'make', 'install'
  end
  test do
    system "false"
  end
end
