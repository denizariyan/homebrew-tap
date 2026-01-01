class Dedup < Formula
  desc "An extremely fast and efficient duplicate file finder"
  homepage "https://github.com/denizariyan/dedup"
  url "https://github.com/denizariyan/dedup/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "146de385819744519315e185b63e393b1fff9dfe2b3daed827696f83c5abbf3d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dedup", "--version"
  end
end
