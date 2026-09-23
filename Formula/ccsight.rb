class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.7/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "7ab408147ade0bd107ce57a1bf4da471a57c6224f03a8c4f5abc49b13ba9b969"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.7/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "7a9a444deda0fc489b0c99b157890dd75d69216190c6314f151e2dd63c2d0b44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.7/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e37c1af16fee67c4051b2257f8066296f7f82818c547c12a0e54d86fc01951fa"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.7/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5bced66d0b068072e06de37a7933620f56824aa3a01cdd1c93a644c9a56a8c8"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
