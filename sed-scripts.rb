# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SedScripts < Formula
  desc "Using sed scripts like programs"
  homepage "https://github.com/lopesivan/sed-scripts.git"
  version "1.1.4"
  url "https://github.com/lopesivan/sed-scripts.git",
    revision: "f355cb2f4f1686b3a1bc70e943fa95f3eb50c21b",
    branch: "master"
  license "MIT"
  revision 1
  head "https://github.com/lopesivan/sed-scripts.git", branch: "master"

  def install
    system "make", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
