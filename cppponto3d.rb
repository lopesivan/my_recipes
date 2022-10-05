class Cppponto3d < Formula
  desc "Ponto3d"
  homepage "https://github.com/lopesivan/cppPonto3d"
  license "GPL-3.0-or-later"
  version "1.2"
  url "https://github.com/lopesivan/cppPonto3d.git",
      revision: "84d8c7d0215ff9869ea26ccd523e2c4e9fc330f7"
  head "https://github.com/lopesivan/cppPonto3d.git", branch: "master"

  def install
    # ENV["DESTDIR"] = "/"
    args = %W[
      --no-warn-unused-cli
      -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
      -DCMAKE_BUILD_TYPE:STRING=Debug
      -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir "build" do
      system "/usr/local/bin/cmake", *args, "..", "-G", "Ninja"
      system "/usr/bin/ninja"
      system "/usr/bin/ninja", "install"
    end
  end

  test do
    system "false"
  end
end
