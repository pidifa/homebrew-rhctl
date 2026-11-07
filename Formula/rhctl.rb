class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/pidifa/rhctl"
  version "1.0.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.8/rhctl-v1.0.8-macos-arm64"
      sha256 "e3b073216a56baf36f7a8f49fab6f1e19d5604a4639576d09fb244eb3977fe69"
    end
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.8/rhctl-v1.0.8-macos-x86_64"
      sha256 "702b778ab5b8a45c7ffdaa84b797bd985545a9aceb82dfd1010db69476c7f6b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.8/rhctl-v1.0.8-linux-x86_64"
      sha256 "13caf60c56f0a4e2a2ed0d9d1f89520dc61fa3c0bc17f0c37cdf0e8372410901"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
