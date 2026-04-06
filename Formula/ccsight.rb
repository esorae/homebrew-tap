class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.0/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "TODO"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.0/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "TODO"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.0/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "TODO"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.0/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "TODO"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
