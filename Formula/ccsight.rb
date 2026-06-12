class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.5/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "74d6ed9d4b7f86097d4107b2ed763db40c95604245d6fc5e4281c44de166ddc4"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.5/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "cad8088c7bab43a8978d79ef28202d36e81cf455a6a123afb7cdacfffb0f2a85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.5/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd2b7fb26ec9b09f6a31c2cc038580dbf44d0c77e9db6c6252b21425cc6b766a"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.5/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38f89d6883041f5616b8b2bbbc41c83525e95073e8c115cef1226364f371fc20"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
