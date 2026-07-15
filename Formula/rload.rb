class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  url "https://github.com/wenhaozhao/rload/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "606f02b8bf18b56c5cf3aca7a804da15f75e5bd3a6f5136f1e64ae8b296f0811"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
