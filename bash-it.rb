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
    url "https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-it/bash-it-custom-20220709-1d2f89ff.diff"
    sha256 "b4247c2d1dece98a49deccb110de28e3228a47881699f6aaa2180a4c3588ff36"
  end

  def install
    prefix.install Dir["*"]

    # customize-bash-it.sh
    # https://gist.githubusercontent.com/lopesivan/94d5667ab301571f120e1893ad14c0e4/raw/6b2aebdc71c18e865f6c8d088293ed169d9c388e/customize-bash-it.sh
    #
    #/bin/bash -c "$(curl -fsSL https://gist.githubusercontent.com/lopesivan/94d5667ab301571f120e1893ad14c0e4/raw/6b2aebdc71c18e865f6c8d088293ed169d9c388e/customize-bash-it.sh)"
  end

  test do
    system "false"
  end
end
