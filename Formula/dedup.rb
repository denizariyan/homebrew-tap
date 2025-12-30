class Dedup < Formula
  desc "An extremely fast and efficient duplicate file finder"
  homepage "https://github.com/denizariyan/dedup"
  url "https://github.com/denizariyan/dedup/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ab9659d5ef3cf7bddf7b11577c43f08037f52fbbce2e372e0684a5b5d12aed61"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dedup", "--version"
  end
end
