# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class TdlAT42 < Formula
  desc "tdl is a lightweight program for managing a to-do list of pending jobs that you have."
  homepage "https://github.com/ivancarlos/tdl"
  url "https://github.com/ivancarlos/tdl.git",
    revision: "7c12681a9eb330545cf82f42268b8d4b466d0d4a"
  version "1.0.3"
#  head "https://github.com/ivancarlos/tdl",
#    branch: "master",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/tdl/tdl-custom-7c12681a9eb330545cf82f42268b8d4b466d0d4a-20240427.diff'
    sha256 '84468dc449e2b3571120dda12170f6150d2120d6a6bf86add2aa4e07ca5cd8b2'
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
