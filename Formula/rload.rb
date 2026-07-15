class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    on_macos do
      url "https://github.com/wenhaozhao/rload/releases/download/v0.2.3/rload-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "9731aac405f8a20d1f362028fbea11857845b786d53a14879a5abb37e1aa0dfb"
    end
  end

  on_linux do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.2.3/rload-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0eeff63df792c14da712b11bb41e7e93f75577258c9ebcc17de4da37d1f7f5fe"
  end

  def install
    bin.install "rload"
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
