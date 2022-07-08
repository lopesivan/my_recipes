# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class StTerminal < Formula
  desc "st is a simple terminal emulator for X which sucks less."
  homepage "https://github.com/lopesivan/st"
  url "https://github.com/lopesivan/st.git",
      branch: "develop",
      revision: "fab23947e33497eddf82e397c18b22f4d98647a2"
  version "0.8.5"
  head "https://github.com/lopesivan/st.git", branch: "master"
  license "GPL-3.0-or-later"

  def install
    system "make", "CC=/usr/bin/c99"
    system "make","PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
