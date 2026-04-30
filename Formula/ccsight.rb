class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.0/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "e20c35dd01d805cdd76380d59ee479817168a6bf1af93d725ada0cd8c679f251"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.0/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "749cd81ae11d77629bd8623ec8eeaed8e0dcc6805000f31f14bff15647ad1c55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.0/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09eafcbfa1af9da95212f438a74e2d84b035e7965d5cc7d92a2a1bc0128f4351"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.0/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15060be8c5cb474207c72fd09afbde6f1b5e1ee3a8ba3ce0205c3a1aac9c2a24"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
