class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.0/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "0d78d9038849ce5da08f419f63acff0e8ee86b8ee7273f7fdbee7b1f40025589"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.0/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "97966c807bd6316ebd8501b422eff32d863bb1d67e2215e7479c8b418c3863c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.0/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18dfb65a108a893119c819d708b6a8dbb466e4ae2eaddc6edde22d7baa439613"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.0/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8b2ac1bcbed20f5c14aff709225b05ebb5fa362296a47dcbcbe1f8caa1a0baf"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
