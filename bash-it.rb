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
    url "https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-it/bash-it-my_local_changes-20220709-9a500059.diff"
    sha256 "a7ef77531453232c4288b1bf81e00845d953efae88642ac7b2c36398f9f9a52b"

    url "https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-it/bash-it-custom-20220709-6094da84.diff"
    sha256 "f0044e0c538caf562d06072dde1a13dbaa44c3e0a9c35c095b9acb154d6e1fc3"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
