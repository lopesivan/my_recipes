# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Bangsh < Formula
  desc "Bang.sh - for easy Shell Scripting"
  homepage "https://github.com/bangsh/bangsh"
  version "1.1.0"
  url "https://github.com/bangsh/bangsh.git",
    branch: "master",
    revision: "2c9c70d73fd161c57ffd3595d95e6285698a9c59"
  license "MIT"
  revision 1
  head "https://github.com/bangsh/bangsh.git", branch: "master"

  def install
    system "make","prefix=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
