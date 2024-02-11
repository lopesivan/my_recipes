# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NativiumAT42 < Formula
  desc "Write a single code in C++ and compile for any platform."
  homepage "https://github.com/nativium/nativium"
  url "https://github.com/nativium/nativium.git",
    revision: "ef990f976e51626474f3203a6b238ca732eb1fdf"
  version "1.1.2"
#  head "https://github.com/nativium/nativium",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/nativium/nativium-custom-20240211-2bec797.diff'
    sha256 '019526710d3289d7ed7379ea7080cf797e50a830337575ffdbf8991e48ad18c4'
  end
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
