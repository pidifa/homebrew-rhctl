class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/saidake/rhctl"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.4/rhctl-v1.0.4-macos-arm64"
      sha256 "f0c9530bf89d18cf7576bc78d669d5bbf5e809ec1b9105a5c4e5db164d7197bb"
    end
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.4/rhctl-v1.0.4-macos-x86_64"
      sha256 "e004adcbc17010f12a9904b051fbabaa7d53f100a0b56fad9464ad3eb8465490"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saidake/rhctl/releases/download/v1.0.4/rhctl-v1.0.4-linux-x86_64"
      sha256 "a24d970edef435d07abae7956e430b07e4b7a7aaf687699aba5c3273b396ef62"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
