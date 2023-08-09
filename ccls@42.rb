# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CclsAT42< Formula
  desc "C/C++/ObjC language server"
  homepage "https://github.com/MaskRay/ccls"
  url "https://github.com/MaskRay/ccls.git"
  version "0.0.1"
  license "Apache-2.0"
  revision 4
  head "https://github.com/MaskRay/ccls.git", branch: "master"

  def install
    ENV["CPLUS_INCLUDE_PATH"] = "/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11"
    ENV["LIBRARY_PATH"] = "/usr/lib/gcc/x86_64-linux-gnu/11"
    std_cmake_args = %W[
      -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++
      -DCMAKE_PREFIX_PATH=/usr/lib/llvm-18
      -DCMAKE_BUILD_TYPE=Release
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
      -DSYSTEM_CLANG=On
      -DUSE_SHARED_LLVM=on
      -DCURSES_LIBRARY:FILEPATH=/usr/lib/x86_64-linux-gnu/libncurses.so
      -DCURSES_INCLUDE_PATH:PATH=/usr/include
      -DZLIB_LIBRARY:FILEPATH=/usr/lib/x86_64-linux-gnu/libz.so
      -DZLIB_INCLUDE_DIR:PATH=/usr/include
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    system "cmake", "-H.", "-B", "release", *std_cmake_args
    system "cmake", "--build", "release", "--target", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ccls`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
