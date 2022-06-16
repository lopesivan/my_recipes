# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TreeSitterLinuxX64 < Formula
  desc "An incremental parsing system for programming tools"
  homepage "https://github.com/tree-sitter/tree-sitter"
  url "https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.6/tree-sitter-linux-x64.gz"
  sha256 "f7001a0ff42cb27c0b0a9023352b31273e98f6c72282003c6bd1fe9ec1018491"
  license "BSD-3-Clause"
  revision 4

  def install
	# system "chmod", "+x", "#{prefix}/tree-sitter-linux-x64"
    bin.install "tree-sitter" => "tree-sitter"
  end
end
