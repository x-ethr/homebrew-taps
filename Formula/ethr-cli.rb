# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EthrCli < Formula
  desc "ETHR Utilities CLI"
  homepage "https://github.com/x-ethr/ethr-cli"
  version "0.1.5"
  license "BSD 3-Clause License"

  depends_on "bash" => :optional
  depends_on "fish" => :optional
  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.1.5/ethr-cli-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0f00192e0a12acd8829ed835aa6a79076b3b5989f9437e6f85bc450255f6e4fa"

      def install
        bin.install "ethr-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.1.5/ethr-cli-darwin-x86-64.tar.gz", using: CurlDownloadStrategy
      sha256 "161b161b23b18953dc11456d9852947b00d33e5c934f923736454ab07086de2d"

      def install
        bin.install "ethr-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.1.5/ethr-cli-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c02f0607a9c0c36558b0c101dae2f5e90d9784547b43a417df55c52777bf6a4"

      def install
        bin.install "ethr-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/x-ethr/ethr-cli/releases/download/v0.1.5/ethr-cli-linux-x86-64.tar.gz", using: CurlDownloadStrategy
      sha256 "465582a40fc896a91e5c65e0f32f7c30f2fe57a6b4dd6037be56c40144ed895b"

      def install
        bin.install "ethr-cli"
      end
    end
  end

  conflicts_with "ethr-cli"
end
