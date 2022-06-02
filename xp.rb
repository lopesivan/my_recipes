# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xp < Formula
  desc "Commnad line using framework bangsh."
  homepage "https://github.com/lopesivan/xp"
  url "https://github.com/lopesivan/xp.git",
    branch: "main",
    using: :git
  version "2.1"
  head "https://github.com/lopesivan/xp.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  depends_on "bangsh" => :build

  def install
    system "make","prefix=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
