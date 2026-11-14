class Rhctl < Formula
  desc "High-performance Rust CLI tool for remote host management"
  homepage "https://github.com/pidifa/rhctl"
  version "1.0.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.9/rhctl-v1.0.9-macos-arm64"
      sha256 "8ebe24315f35514e4c40e475af4a0c3843d1ccb25de77df1a52c3657d5b47446"
    end
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.9/rhctl-v1.0.9-macos-x86_64"
      sha256 "aabc5c404b841e27833263ccf94877a74f5f41691f56775de335e4713e3f478b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pidifa/rhctl/releases/download/v1.0.9/rhctl-v1.0.9-linux-x86_64"
      sha256 "2be97db4f42410a955d596556307399932dfd1cd6a2fbb14134a99d5a9c54f75"
    end
  end

  def install
    bin.install Dir["rhctl*"].first => "rhctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rhctl --help")
  end
end
