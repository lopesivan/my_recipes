# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class StTerminal < Formula
  desc "st is a simple terminal emulator for X which sucks less."
  homepage "https://github.com/lopesivan/st"
  url "https://github.com/lopesivan/st.git",
      branch: "develop",
      revision: "4d47d5c5f0a9b3e12715395c88b4dae1c059b771"
  version "0.8.4"
  head "https://github.com/lopesivan/st.git", branch: "master"
  license "GPL-3.0-or-later"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
