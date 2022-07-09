# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BashIt < Formula
  desc "Bash-it is a collection of community Bash commands and scripts for Bash 3.2+. (And a shameless ripoff of oh-my-zsh smiley."
  homepage "https://github.com/Bash-it/bash-it"
  url "https://github.com/Bash-it/bash-it.git",
    revision: "2ef5d483e38d790cb1c32ea8999dfbc244ff2f91"
  version "3.8.2"
  head "https://github.com/Bash-it/bash-it", branch: "master", using: :git
  license "GPL-3.0-or-later"

  patch do
    url "https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-it/bash-it-custom_bash-it-20220709-0e4e186f.diff"
    sha256 "7a714d45c4931002fd63f1bc26ea2e1b62e512ca70a4c3a3ddde0d9619cd0350"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
