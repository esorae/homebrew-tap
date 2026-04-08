class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.0.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "41c63ca3d22fb5e839b6ad411ea60400bc96b8d784f07798d6fc66eadda25c6e"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "ed60db375edb6e951e5a6f30a17bb505fa29240223182e4ca4fb85aa47cc6a0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "133c4d93d37759a075e5bc52e87319743cd95e4df5300dda7276ec8dcd4eabf4"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.2/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e6db28fcbc40108e18491c1303414abc0df11926068622e59f06b22536126fb"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
