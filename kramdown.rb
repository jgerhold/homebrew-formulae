class Kramdown < Formula
  desc "Markdown specification for CS/math/eng. note-taking"
  homepage "https://github.com/OJFord/kramdown"
  url "https://github.com/OJFord/kramdown/releases/download/v0.1/kramdown"
  version "0.1"
  sha256 "0e87125667f1563aa6dcb975e5b1871aa05ae3f3de76aec77220c156271c0938"

  def install
    bin.install "kramdown"
  end

  test do
    echo | kramdown
  end
end
