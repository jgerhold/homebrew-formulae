class Loginitems < Formula
  desc "Tool for managing login items"
  homepage "https://github.com/ojford/loginitems"
  url "https://github.com/OJFord/loginitems/archive/v1.0.tar.gz"
  sha256 "7efb6939224a6a8b7fbe6ef794885b303afcfe32751afa56ecd442800ab842d8"

  def install
    bin.install "loginitems"
    bin.install "loginitems-add"
    bin.install "loginitems-rm"
    bin.install "loginitems-ls"
  end

  test do
    loginitems -h
  end
end

