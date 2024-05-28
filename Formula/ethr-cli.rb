# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EthrCli < Formula
  desc "ETHR Utilities CLI"
  homepage "https://github.com/x-ethr/ethr-cli"
  version "0.2.2"
  license "BSD 3-Clause License"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.2.2/ethr-cli-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b59b7d6c2def199657e569cc87c1c9c39cd02e0883b3ed2a4dda50de785ac9be"

      def install
        bin.install "ethr-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.2.2/ethr-cli-darwin-x86-64.tar.gz", using: CurlDownloadStrategy
      sha256 "67c383d2d8183be6aa17de5218a6815eddd2c3dabbad95ba178f6681f50e98c0"

      def install
        bin.install "ethr-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.2.2/ethr-cli-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8a5b9483c5640c46873b4818029f2b57ad474494771663cb1fe02411b415b63"

      def install
        bin.install "ethr-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.2.2/ethr-cli-linux-x86-64.tar.gz", using: CurlDownloadStrategy
      sha256 "a7a6483e3694b6cfa4bf2a3f39992c489192f62abea461fba9f7d011c4e01c20"

      def install
        bin.install "ethr-cli"
      end
    end
  end

  conflicts_with "ethr-cli"
end
