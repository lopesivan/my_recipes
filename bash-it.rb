# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BashIt < Formula
  desc "Bash-it is a collection of community Bash commands and scripts for Bash 3.2+. (And a shameless ripoff of oh-my-zsh smiley."
  homepage "https://github.com/Bash-it/bash-it"
  url "https://github.com/Bash-it/bash-it", using: :git
  version "0.4.2"
  head "https://github.com/Bash-it/bash-it", branch: "master", using: :git
  license "GPL-3.0-or-later"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
