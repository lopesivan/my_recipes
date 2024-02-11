# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NativiumAT42 < Formula
  desc "Write a single code in C++ and compile for any platform."
  homepage "https://github.com/nativium/nativium"
  url "https://github.com/nativium/nativium.git",
    revision: "0316d93ad2c21c8c66bdb4b45bc82ba9adcb9e1d"
  version "1.1.2"
#  head "https://github.com/nativium/nativium",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/nativium/nativium-custom-20240211-cc32bcd.diff'
    sha256 '11c155774ad9aa73832ae8d75dffa5892d10babab8d82888643bb0353f766564'
  end
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
