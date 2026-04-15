class Bhkey < Formula
  desc "Zero-latency modifier key remapper for macOS external keyboards"
  homepage "https://github.com/baekho-lim/bhkey"
  url "https://github.com/baekho-lim/bhkey/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "9ee23a9dbb2b485b6b9dddc3d275b775f2e0ae087dcb2d6fce2a3a1f3bc7a98e"
  license "MIT"
  version "1.0.2"

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
