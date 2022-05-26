class St < Formula
  desc "Statistics from the command-line"
  homepage "https://github.com/lopesivan/st-1"
  version "1.1.4"
  url "https://github.com/lopesivan/st-1.git",
    revision: "61c63ea8f8ea857e2acb665bdb490e917a5ce348",
    branch: "master"
  license "MIT"
  revision 1
  head "https://github.com/lopesivan/st-1.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    ENV.prepend_create_path "PERL5LIB", lib/"perl5/"

    system "perl", "Makefile.PL", "INSTALL_BASE=#{prefix}", "INSTALLSITEMAN1DIR=#{man1}", "INSTALLSITEMAN3DIR=#{man3}"
    system "make", "install"

    bin.env_script_all_files libexec/"bin", PERL5LIB: ENV["PERL5LIB"]
  end

  test do
    (testpath/"test.txt").write((1..100).map(&:to_s).join("\n"))
    assert_equal "5050", pipe_output("#{bin}/st.pl --sum test.txt").chomp
  end
end
