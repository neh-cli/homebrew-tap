# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Neh < Formula
  desc "neh is a sleek CLI application designed for high-speed, real-time
interaction with AI specializing in Large Language Models."
  homepage "https://github.com/neh-cli/neh"
  version "0.0.20"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.20/neh_Darwin_x86_64.tar.gz"
      sha256 "bd547361f46317e0e77cefc577dc2f043596be4ceba0d562e44bf4eb6bef059a"

      def install
        bin.install "neh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.20/neh_Darwin_arm64.tar.gz"
      sha256 "068243a65cd62c1ccb6c241cd659ff62b93914a8e183dfd49c7aab0587aefc5b"

      def install
        bin.install "neh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.20/neh_Linux_x86_64.tar.gz"
        sha256 "91e76bc6d4e50a5f27b130a6ca41d7ebd5bb77605e16e817a163cbc9f7a1e8da"

        def install
          bin.install "neh"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.20/neh_Linux_arm64.tar.gz"
        sha256 "80dd3efb824682f769897f219700e8ad13c204668b20a14ed53bdec0b2d256f0"

        def install
          bin.install "neh"
        end
      end
    end
  end

  test do
    system "#{bin}/neh version"
  end
end
