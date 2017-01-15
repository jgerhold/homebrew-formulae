class Kramdown < Formula
  desc "Markdown specification for CS/math/eng. note-taking"
  homepage "https://github.com/OJFord/kramdown"
  url "https://github.com/OJFord/kramdown/releases/download/v0.1.1/kramdown"
  version "0.1.1"
  sha256 "a903191b673fe62c84534baf5aa678a513ea38b089ecb021ef0254776d3b135c"

  def install
    bin.install "kramdown"
  end

  test do
    echo | kramdown
  end
end
