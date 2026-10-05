class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/saidake/rhctl"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.5/rhctl-v1.0.5-macos-arm64"
      sha256 "51900a4b6875c276c8641275a31d740f44372e4713201b3e548455e8ab4622e9"
    end
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.5/rhctl-v1.0.5-macos-x86_64"
      sha256 "8deb876e1f8de68041e01ee8dc16296f17afbe8071739fe0e09f95266f92ab84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.5/rhctl-v1.0.5-linux-x86_64"
      sha256 "7e5bd15dbac897a81bf8fd8492c8931eee5552824761343c585c6be078b29d48"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
