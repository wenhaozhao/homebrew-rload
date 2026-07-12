class Rload < Formula
  desc "Rust HTTP load generator with Nginx access-log and JSONL replay"
  homepage "https://wenhaozhao.github.io/rload/"
  url "https://github.com/wenhaozhao/rload/archive/refs/tags/0.1.1.tar.gz"
  sha256 "76f69b62ab1cd479da6f388f4a9a300b1f3a1a49f3afbf8d114f97f9de8e862f"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "rload", shell_output("#{bin}/rload --help")
  end
end
