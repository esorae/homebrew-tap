class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.1/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "80969d480d6ce9eed73d545c635775f484909a9af8204a1234397bd85b7f3663"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.1/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "5d8c1e51e67678d0a5bc196d5525f79391ba00523f4e7f57dd988128011c53de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.1/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "857a7f6d224ac9db960221f61b55115c35f94b41e7346166e1a68851a7867184"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.0.1/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b10c5095725ab11699bfabe184f0db3f37092e6a1ed64c9ece3c949065ccd27"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
