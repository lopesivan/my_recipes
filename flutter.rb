# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Flutter < Formula
  desc "Flutter is Google's SDK for crafting beautiful."
  homepage "https://flutter.dev"
  url "https://github.com/flutter/flutter",
    branch: "main",
    using: :git
  version "3.1.0"
  head "https://github.com/flutter/flutter.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    %W[
      analysis_options.yaml
      AUTHORS
      bin
      CODE_OF_CONDUCT.md
      CODEOWNERS
      CONTRIBUTING.md
      dartdoc_options.yaml
      dev
      examples
      flutter_console.bat
      LICENSE
      packages
      PATENT_GRANT
      README.md
      TESTOWNERS
    ].each do |file|
	  system "cp", "-r", file, "#{prefix}"
    end

    bin.install "bin/dart" => "dart"
    bin.install "bin/flutter" => "flutter"
  end

  test do
    system "false"
  end
end
