# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BashConfig < Formula
  desc "Commnad line template snipetts."
  homepage "https://github.com/lopesivan/bash-config"
  url "https://github.com/lopesivan/bash-config.git",
    revision: "89b1ef85ef2b3fd2907f2be9b345fd2b53a76a07"
  version "1.3"
  head "https://github.com/lopesivan/bash-config",
    branch: "main",
    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/bash-config/bash-config-custom-20230809-0c19587.diff'
    sha256 'a43602b1e7d4e3618030026e7dc1d30ea26a5517ddce2991ed9559b46c949341'
  end
  def install
    inreplace "bashrc", "${HOME}/developer/bash-config", "#{opt_prefix}"
    inreplace "bbc", "${HOME}/developer/bash-config", "#{opt_prefix}"
    inreplace "configure.sh", "${HOME}/developer/bash-config", "#{opt_prefix}"

    prefix.install Dir["*"]
  end

  test do
    system "false"
  end
end
