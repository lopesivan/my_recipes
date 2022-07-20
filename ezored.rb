# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ezored < Formula
  desc "C++ Multiplatform Toolkit Template."
  homepage "https://ezored.github.io/"
  url "https://github.com/ezored/ezored.git",
    branch: "main",
    revision: "c6fd66f06c0f9a5694160f76d254a318fa7d1762"
  version "1.0.0"
  head "https://github.com/ezored/ezored.git",
    branch: "main",
    using: :git
  license "GPL-3.0-or-later"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
