class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.2/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "2decb526dc8fffcaf4a03a1c19737ef2d7ff6d9ada3a45185a986ed7f3b0d5d0"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.2/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "2a3070a6d7d4fd2b8e336883338c893ecf1668dcc3c47415c896df863457878c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.2/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8351e4b9f15686b32ed8b3297aff161a97770723d0734f6b2b9af330dd4a55fb"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.1.2/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e70e8af9ea899f4ec9fb00f4c8c4f87706578af1017345f0938cd963ea6bef95"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
