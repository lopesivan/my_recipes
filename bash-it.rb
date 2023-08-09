# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class BashIt < Formula
  desc "Bash-it is a collection of community Bash commands and scripts for Bash 3.2+. (And a shameless ripoff of oh-my-zsh smiley."
  homepage "https://github.com/Bash-it/bash-it"
  url "https://github.com/Bash-it/bash-it.git",
    revision: "2ef5d483e38d790cb1c32ea8999dfbc244ff2f91"
  version "3.8.4"
#  head "https://github.com/Bash-it/bash-it",
#    branch: "master",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-it/bash-it-custom-20230809-d2c26518.diff'
    sha256 '0c1d190dd5b322a41592d1cd16615bab8f19b4fa85d39dbb6dd001668da8b48c'
  end
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
