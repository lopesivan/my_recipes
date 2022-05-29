# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class StTerminal < Formula
  desc "st is a simple terminal emulator for X which sucks less."
  homepage "https://github.com/lopesivan/st"
  url "https://github.com/lopesivan/st.git",
      branch: "develop",
      revision: "4d47d5c5f0a9b3e12715395c88b4dae1c059b771"
  version "0.8.4"
  head "https://github.com/lopesivan/st.git", branch: "master"
  license "GPL-3.0-or-later"

  def install
    cflags = %W[
      -I/usr/X11R6/include
      -I/usr/local/include
      -I/usr/include/freetype2
      -I/usr/include/libpng16
      -I/usr/include/freetype2
      -I/usr/include/libpng16
      -I/usr/include/harfbuzz
      -I/usr/include/glib-2.0
      -I/usr/lib/x86_64-linux-gnu/glib-2.0/include
      -DVERSION=\"0.8.4\"
      -D_XOPEN_SOURCE=600
    ]

    libs = %W[
    -L/usr/X11R6/lib
    -lm
    -lrt
    -lX11
    -lutil
    -lXft
    -lXrender
    -lfontconfig
    -lfreetype
    -lfreetype
    -lharfbuzz
    ]

    system "c99", *cflags, "-O", "-c", "st.c"
    system "c99", *cflags, "-O", "-c", "x.c"
    system "c99", *cflags, "-O", "-c", "boxdraw.c"
    system "c99", *cflags, "-O", "-c", "hb.c"
    system "c99", "-o", "st", "st.o", "x.o", "boxdraw.o", "hb.o", *libs

    system "mkdir", "-p", "#{prefix}/bin"
    system "cp", "-f", "st", "#{prefix}/bin"
  end

  test do
    system "false"
  end
end
