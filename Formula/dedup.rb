class Dedup < Formula
  desc "An extremely fast and efficient duplicate file finder"
  homepage "https://github.com/denizariyan/dedup"
  url "https://github.com/denizariyan/dedup/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2a8aa8ee76631803129336a9a72dca56a51657f03ea927dea0b631685a0ffd90"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/dedup", "--version"
  end
end
