# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TreeSitterLinuxX64 < Formula
  desc "An incremental parsing system for programming tools"
  homepage "https://github.com/tree-sitter/tree-sitter"
  url "https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.7/tree-sitter-linux-x64.gz"
  sha256 "633f47f2239ec45d320258da881a0d2bb2e4383e6b48a0d00713ed402f22d9b1"
  license "BSD-3-Clause"
  revision 4

  def install
	# system "chmod", "+x", "#{prefix}/tree-sitter-linux-x64"
    bin.install "tree-sitter" => "tree-sitter"
  end
end
