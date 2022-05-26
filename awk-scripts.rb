# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AwkScripts < Formula
  desc "Using awk scripts like programs"
  homepage "https://github.com/lopesivan/awk-scripts.git"
  version "1.1.4"
  url "https://github.com/lopesivan/awk-scripts.git",
    revision: "6ad179adf9bf83acf92b5896e81a2d4a93d47389",
    branch: "main"
  license "MIT"
  revision 1
  head "https://github.com/lopesivan/awk-scripts.git", branch: "main"

  def install
    system "make", "PREFIX=#{prefix}" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
