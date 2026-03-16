class OpLoader < Formula
  desc "TUI for configuring 1password secrets for injection into your shell environment"
  homepage "https://github.com/idiomattic/op-loader"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/idiomattic/op-loader/releases/download/v0.4.6/op-loader-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "b5f6edd148663f59dd48c16f3d9fe5609139af0ac2355e9dae7298446b343aca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/idiomattic/op-loader/releases/download/v0.4.6/op-loader-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "37ecdfd2888e37fb0576b6bfd4c43a3e76f7a0e18fab15106273072626c7dbd2"
    end
  end

  def install
    bin.install "op-loader"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/op-loader --version")
  end
end
