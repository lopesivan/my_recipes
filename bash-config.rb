# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BashConfig < Formula
  desc "Commnad line template snipetts."
  homepage "https://github.com/lopesivan/bash-config"
  url "https://github.com/lopesivan/bash-config.git",
    branch: "main",
    using: :git
  version "1.2"
  head "https://github.com/lopesivan/bash-config.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    inreplace "bashrc", "${HOME}/developer/bash-config", "#{prefix}"
    inreplace "bbc", "${HOME}/developer/bash-config", "#{prefix}"
    inreplace "configure.sh", "${HOME}/developer/bash-config", "#{prefix}"
    # inreplace "it.sh", "${HOME}/developer/", "#{prefix}/"
    # inreplace "Makefile", "${HOME}/developer/", "#{prefix}/"
    # inreplace "profile", "${HOME}/developer/", "#{prefix}/"

    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
