class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/pidifa/rhctl"
  version "1.0.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.7/rhctl-v1.0.7-macos-arm64"
      sha256 "0d530bca088fd5a2bbd7ffffddf1dbf887bcd68fdd251bbc34a9dd72c99c3024"
    end
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.7/rhctl-v1.0.7-macos-x86_64"
      sha256 "70daed10f4cd333bacd4000fcba87145a6f9f89b63b76d9f3c4256e3f0b6b470"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.7/rhctl-v1.0.7-linux-x86_64"
      sha256 "dd2b2cb51c063e0b510bc80a8f6eb16d1067a9eff6edcc889fdb388d635d7506"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
