class Ccsight < Formula
  desc "Claude Code session analytics TUI"
  homepage "https://github.com/esorae/ccsight"
  version "1.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.1/ccsight-aarch64-apple-darwin.tar.gz"
      sha256 "7137b07081fe51136fd32be222d651695fe93d985d72a293d1cbdea4f616571f"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.1/ccsight-x86_64-apple-darwin.tar.gz"
      sha256 "35768c718fe67c52bfd726d8a1c85a65fae38049c15731f93be70fdea551b73c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.1/ccsight-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6bb1cc2bf881479d40a28291a64fc62472dbc40235c2cb6356011525d09b3fc"
    end
    on_intel do
      url "https://github.com/esorae/ccsight/releases/download/v1.3.1/ccsight-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4defe1ee1c0a7500d85c52c1afd85133030ad01431dd100bd886db41fd464cc"
    end
  end

  def install
    bin.install "ccsight"
  end

  test do
    assert_match "ccsight", shell_output("#{bin}/ccsight --help")
  end
end
