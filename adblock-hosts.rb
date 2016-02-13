class AdblockHosts < Formula
  desc "Block ads from hosts file, amalgamation of sources"
  homepage "http://github.com/StevenBlack/hosts"
  url "https://github.com/OJFord/hosts/archive/v1.1.tar.gz"
  sha256 "5c49762d1354c8f94aaa0e5383127be351121e7d38b32e7078aed49d978e135c"

  def install
    system "mv updateHostsFile.py adblock-hosts"
    system "chmod +x adblock-hosts"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/adblock-hosts"
  end

  def post_install
    puts "Updating and installing hosts."
    puts "You may be prompted for your password."
    system "echo 'y\\nn\\ny\\n' | adblock-hosts"
  end

  test do
    system "adblock-hosts"
  end
end
