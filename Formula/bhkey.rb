class Bhkey < Formula
  desc "Zero-latency modifier key remapper for macOS external keyboards"
  homepage "https://github.com/baekho-lim/bhkey"
  url "https://github.com/baekho-lim/bhkey/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "ac6fc07dc4c433d368c976a69f4a2d6263b1a6caf7dceca931a7a720a8465018"
  license "MIT"
  version "1.0.3"

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
