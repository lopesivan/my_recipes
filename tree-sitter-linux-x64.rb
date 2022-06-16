# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TreeSitterLinuxX64 < Formula
  desc "An incremental parsing system for programming tools"
  homepage "https://github.com/tree-sitter/tree-sitter"
  url "https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.2/tree-sitter-linux-x64.gz"
  sha256 "74ed14a70cc97fc9a357265df442086bd28ef3afea202e1e95874f6d47a59ae0"
  license "BSD-3-Clause"
  revision 4

  def install
	# system "chmod", "+x", "#{prefix}/tree-sitter-linux-x64"
    bin.install "tree-sitter" => "tree-sitter"
  end
end
