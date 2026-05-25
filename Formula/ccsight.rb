class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.2/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "3749dbf9266f59b427877e74295728891e6631365bbb720f9a957fd5a190cc12"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.2/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "54ebd6e49a7eef4994ca3bc826cefcd025f59c021ba27952997957be494d985f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.2/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dde629a3d4fbfbb510e52abbdec5e37effea5cfe7ad1d1dd9412c0ed1c505545"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.2.2/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25f0ffd39e4c2184fdbe46c54770d132e8db7c803ea116631a02746fdce5dc41"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
