# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ProtobufAT42 < Formula
  desc "Protocol buffers (Google's data interchange format)"
  homepage "https://github.com/protocolbuffers/protobuf/"
  url "https://github.com/protocolbuffers/protobuf/releases/download/v3.15.8/protoc-3.15.8-linux-x86_64.zip"
  sha256 "b9ff821d2a4f9e9943dc2a13e6a76d99c7472dac46ddd3718a3a4c3b877c044a"
  license "BSD-3-Clause"
  revision 4

  def install
    bin.install "bin/protoc" => "protoc"
  end

  test do
    testdata = <<~EOS
      syntax = "proto3";
      package test;
      message TestCase {
        string name = 4;
      }
      message Test {
        repeated TestCase case = 1;
      }
    EOS
    (testpath/"test.proto").write testdata
    system bin/"protoc", "test.proto", "--cpp_out=."
  end
end
