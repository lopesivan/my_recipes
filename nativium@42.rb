# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Nativium < Formula
  desc "Bash-it is a collection of community Bash commands and scripts for Bash 3.2+. (And a shameless ripoff of oh-my-zsh smiley."
  homepage "https://github.com/nativium/nativium"
  url "https://github.com/nativium/nativium.git",
    revision: "ef990f976e51626474f3203a6b238ca732eb1fdf"
  version "1.1.1"
#  head "https://github.com/nativium/nativium",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
  end
  def install
    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
