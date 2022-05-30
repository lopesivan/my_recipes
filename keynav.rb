# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Keynav < Formula
  desc "Control the mouse with the keyboard."
  homepage "http://www.semicomplete.com/projects/keynav"
  url "https://github.com/jordansissel/keynav", using: :git
  version "0.5"
  head "https://github.com/jordansissel/keynav", branch: "master", using: :git
  license "GPL-3.0-or-later"

  def install
    system "make", "CC=/usr/bin/cc"
    system "make","PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
