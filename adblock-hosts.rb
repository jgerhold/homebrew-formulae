class AdblockHosts < Formula
  desc "Block ads from hosts file, amalgamation of sources"
  homepage "http://github.com/StevenBlack/hosts"
  url "https://github.com/OJFord/hosts/archive/v1.0.tar.gz"
  sha256 "c89ecd5451e43a03e65e32380150d8a1954d73020b7ae336e9cb026b88315359"

  def install
    system "mv updateHostsFile.py adblock-hosts"
    system "chmod +x adblock-hosts"
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/adblock-hosts"
  end

  test do
    system "adblock-hosts"
  end
end
