# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NgspiceAT42< Formula
  desc "Spice circuit simulator"
  homepage "https://ngspice.sourceforge.io/"
  url "git://git.code.sf.net/p/ngspice/ngspice"
  version "37.0.0"
  license "Apache-2.0"
  revision 4
  head "git://git.code.sf.net/p/ngspice/ngspice", branch: "master"

  def install
    args = %W[
      --prefix=#{prefix}
      --with-x
      --enable-xspice
      --disable-debug
      --enable-cider
      --with-readline=yes
      --enable-openmp
    ]

    system "sh", "autogen.sh"

    mkdir "release" do
      system "../configure", *args
      system "make", "CC=/usr/bin/gcc", "CXX=/usr/bin/g++"
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
