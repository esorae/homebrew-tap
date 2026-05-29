class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.3/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "54077147b753aa4bab23197183632d955252a0e7b5db3140ff0fa3a637e8ae9b"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.3/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "6c7f6ae68fa296a9c3a6ffbb54e299c343fffe88463517567fae9998da4f6025"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.3/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ad3c02f4592035dabd530d5e364b4a3d3aafa58e7edcf48985d66502c279da7"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.3/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78229fc7928746bdb706e0ef23ee638d0b850ee8d8cb463fd25e2c87a690c361"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
