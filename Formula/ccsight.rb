class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.1/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "6836de88aa28958cb47f599ac048e67c7d75a7b238eb636e78a4b63d3d18cb73"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.1/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "ee1142f308c63cd934f6b04eb8d0facaf76379449f449614a0d69e0a89002f9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.1/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4e32e338cde81d48986793e13eed64ecc8bde44768a727eb8cd1e91cececa07"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.1/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2323a4fcd848bfb15690b3bdd144bcc5abfb60f8b325097eea7af875b9af3ea9"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
