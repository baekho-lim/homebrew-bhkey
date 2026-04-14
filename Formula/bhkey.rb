class Bhkey < Formula
  desc "Zero-latency modifier key remapper for macOS external keyboards"
  homepage "https://github.com/baekho-lim/bhkey"
  url "https://github.com/baekho-lim/bhkey/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "53b35eadebb7f9db041877e71bc0ae6f77058f08c507fc5e63f8aef2f4f99aa4"
  license "MIT"
  version "1.0.0"

  on_macos do
    depends_on :macos => :sierra
  end

  def install
    bin.install "bhkey.sh" => "bhkey"
  end

  test do
    assert_match "bhkey v", shell_output("#{bin}/bhkey version")
  end
end
