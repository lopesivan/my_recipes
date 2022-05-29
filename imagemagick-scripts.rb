# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ImagemagickScripts < Formula
  desc "Using git scripts like programs"
  homepage "https://github.com/lopesivan/imagemagick-scripts.git"
  version "1.1.4"
  url "https://github.com/lopesivan/imagemagick-scripts.git",
    branch: "master"
  license "MIT"
  revision 1
  head "https://github.com/lopesivan/imagemagick-scripts.git", branch: "master"

  def install
    system "make", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
