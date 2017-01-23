class Passbase < Formula
  desc "Keybase File System (KBFS)-baskced CLI-based password manager"
  homepage "https://github.com/OJFord/passbase"
  url "https://github.com/OJFord/passbase/releases/download/v0.1/passbase"
  version "0.1"
  sha256 "6dced5b07090c4c916d4df6535acba6f805764d2cc9feb12e2b690b4b3f4e0cc"

  def install
    bin.install "passbase"
  end

  test do
    system "#{bin}/passbase", "ls"
  end
end
