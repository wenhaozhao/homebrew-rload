class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  url "https://github.com/wenhaozhao/rload/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "74f6b6ba9957179612891d2ecb448f3ec2c26f8fefdd3b78ac58164b6e97889c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
