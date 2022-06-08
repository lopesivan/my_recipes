class JsonTui < Formula
  desc "A prototype of a JSON file explorer using a terminal text interface."
  homepage "https://github.com/ArthurSonzogni/json-tui"
  url "https://github.com/ArthurSonzogni/json-tui.git"
  version "1.3.0"
  head "https://github.com/ArthurSonzogni/json-tui.git",
    branch: "master"
  license "GPL-3.0-or-later"

  def install
    args = %W[
      --no-warn-unused-cli
      -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
      -DCMAKE_BUILD_TYPE:STRING=Debug
      -DCMAKE_C_COMPILER:FILEPATH=/usr/local/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/local/bin/clang++
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
