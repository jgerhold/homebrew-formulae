class Alacritty < Formula
  desc "A cross-platform, GPU-accelerated terminal emulator"
  homepage "https://github.com/jwilm/alacritty"
  head "https://github.com/jwilm/alacritty.git", using: :git

  depends_on "cmake" => :build
  depends_on "rustup" => :build
  depends_on "fontconfig"

  def install
    system "make", "app"
    bin.install "target/release/osx/Alacritty.app"
    (share / "alacritty").install *Dir["alacritty*.yml"]
  end
end
