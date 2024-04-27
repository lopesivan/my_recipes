# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class TdlAT42 < Formula
  desc "tdl is a lightweight program for managing a to-do list of pending jobs that you have."
  homepage "https://github.com/ivancarlos/tdl"
  url "https://github.com/ivancarlos/tdl.git",
    revision: "7c12681a9eb330545cf82f42268b8d4b466d0d4a"
  version "1.5.2"
#  head "https://github.com/ivancarlos/tdl",
#    branch: "master",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/tdl/tdl-custom-0e87502b3d8e33467c23c10c43f23d2a9302df6e-20240427.diff'
    sha256 'f12b4f545b49037f56075287fd9fa5522240525dfaf6662eb3b2bbaed252a6cf'
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
