# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class MiscellanyAT42 < Formula
  desc "Miscellany tools."
  homepage "https://github.com/lopesivan/miscellany"
  url "https://github.com/lopesivan/miscellany.git",
    revision: "d4b520a4455afbd57407b910fdb09148cc6871fb"
  version "1.0.2"
#  head "https://github.com/lopesivan/miscellany",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/miscellany/miscellany-custom-fb97a43bc126ba53bbb055cbaef0d5f93b91f808-20240401.diff'
    sha256 '94ac37e897b4b22bc936d394356335b8e772087e0f1d0a252dd4f0fadb75b61f'
  end
  def install
    prefix.install 'zeta-note', 'tmux2'
  
    # bin.mkdir
  
    # %w[glow exa].each do |cmd|
    #   bin.install_symlink "#{prefix}/binary/#{cmd}"
    # end
  
    bin.install 'bin/bakefile-0.2.12.sh' => 'bakefile.sh'
    # bin.install "binary/glow" => "glow"
    bin.install 'binary/exa' => 'exa'
    # bin.install 'bin/lsp.sh' => 'lsp'
    bin.install 'bin/trans' => 'trans'
    # bin.install 'bin/lsperm.sh' => 'lsperm'
    bin.install 'bin/skeleton.sh' => 'skeleton'
    bin.install 'bin/prj.go.sh' => 'prj.go'
    bin.install 'bin/prj.kotlin.sh' => 'prj.kotlin'
    bin.install 'bin/fennel-1.1.0' => 'fennel'
    # bin.install "bin/tree-sitter-0.20.2" => "tree-sitter"
    # bin.install 'bin/java-lsp.sh' => 'java-lsp.sh'
    bin.install 'bin/winetricks' => 'winetricks'
    bin.install 'bin/cpp-ctags.sh' => 'cpp-ctags'
    bin.install 'bin/cheat-client.sh' => 'cht.sh'
    # bin.install "bin/cheat-client.sh" => "cheat"
    # bin.install 'bin/snip.neovim.complete.sh' => 'snip'
  end
  test do
    system "false"
  end
end
