class Bhkey < Formula
  desc "Zero-latency modifier key remapper for macOS external keyboards"
  homepage "https://github.com/baekho-lim/bhkey"
  url "https://github.com/baekho-lim/bhkey/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "86088c6ca991423ef70a9ffcc2aea4340a9157bc5a8766394c3c22a445b39ecc"
  license "MIT"
  version "1.0.1"

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
