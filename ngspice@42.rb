# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NgspiceAT42< Formula
  desc "Spice circuit simulator"
  homepage "https://ngspice.sourceforge.io/"
  url "https://github.com/lopesivan/build-ngspice.git"
  version "37.0.0"
  license "Apache-2.0"
  revision 4
  head "https://github.com/lopesivan/build-ngspice.git", branch: "master"

  def install
      system "/usr/local/bin/bash", "build-ngspice.sh", "#{prefix}"
  end

  test do
    system "false"
  end
end
