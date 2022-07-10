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

    # bash-it enable alias developer general mutt redis tmux vim wine xclip
    # bash-it enable completion bash-it brew cargo cht docker-compose docker-machine git_flow github-cli iprj tldr tmuxinator ttjava wd xp
    # bash-it enable plugin android arduino brew dart ghcup goenv gradle groovy jbang jenv luaenv ndenv pandoc perl5 pyenv rakudobrew rbenv roo rustup

# bash-it enable alias
# developer
# general
# mutt
# redis
# tmux
# vim
# wine
# xclip

# bash-it enable completion
# bash-it
# brew
# cargo
# cht
# docker-compose
# docker-machine
# git_flow
# github-cli
# iprj
# tldr
# tmuxinator
# ttjava
# wd
# xp

# bash-it enable plugin
# android
# arduino
# brew
# dart
# ghcup
# goenv
# gradle
# groovy
# jbang
# jenv
# luaenv
# ndenv
# pandoc
# perl5
# pyenv
# rakudobrew
# rbenv
# roo
# rustup
  end

  test do
    system "false"
  end
end
