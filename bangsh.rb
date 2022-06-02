# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Bangsh < Formula
  desc "Bang.sh - for easy Shell Scripting"
  homepage "https://github.com/bangsh/bangsh"
  version "0.1.1"
  url "https://github.com/bangsh/bangsh.git",
    branch: "main",
    revision: "2c9c70d73fd161c57ffd3595d95e6285698a9c59"
  license "MIT"
  revision 1
  head "https://github.com/bangsh/bangsh.git", branch: "master"

  # # https://zlib.net/zlib_how.html
  # resource "test_artifact" do
  #   url "https://zlib.net/zpipe.c"
  #   version "20051211"
  #   sha256 "68140a82582ede938159630bca0fb13a93b4bf1cb2e85b08943c26242cf8f3a6"
  # end

  patch do
    url "https://raw.githubusercontent.com/lopesivan/bangsh/patches/bangsh-makefile-20220602-86e51ea.diff"
    sha256 "1ae3f11e90ada2638d3ab61605a004354c14167a86917d515f1961246b1ebba0"
  end

  # def install
  #   system "make","prefix=#{prefix}", "install"
  # end

  test do
    system "false"
  end
end
