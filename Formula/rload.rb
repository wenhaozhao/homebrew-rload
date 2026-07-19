class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  license any_of: ["MIT", "Apache-2.0"]

  on_arm do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0/rload-0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "543eab40e96e2f7d7132a2dc70070a2c493dc7bbef81025d9d3c6eb589aae575"
  end

  on_intel do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0/rload-0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "aa2fb2b1823f5d4afb700b53dc36bcf9969d15a53a4c1101e98023a4dd171e85"
  end

  on_linux do
    url "https://github.com/wenhaozhao/rload/releases/download/v0.3.0/rload-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f582425c3246629336b8a7de6efdf170675ee1fe4c499c1a4dea505860b8fb24"
  end

  def install
    bin.install "rload"
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
  end
  