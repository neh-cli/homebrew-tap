# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Neh < Formula
  desc "neh is a sleek CLI application designed for high-speed, real-time
interaction with AI specializing in Large Language Models."
  homepage "https://github.com/neh-cli/neh"
  version "0.0.26"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.26/neh_Darwin_x86_64.tar.gz"
      sha256 "f7d09abd2158d467b424fde45deaacc31bd1bab966ccb02cf758ee6061299fbd"

      def install
        bin.install "neh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.26/neh_Darwin_arm64.tar.gz"
      sha256 "cc3d31684724e28e23e9af998171388a561094e13cd0e16833f31032cafb88d5"

      def install
        bin.install "neh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.26/neh_Linux_x86_64.tar.gz"
        sha256 "4d0358b8963f034f2b9ed05f23eb0350403dd9c965c1e4bdf50bfa02b25acbc0"

        def install
          bin.install "neh"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.26/neh_Linux_arm64.tar.gz"
        sha256 "60489998180c4018a9cc79d2b16858b2bcce767f431ccd4d69072b0791493bd9"

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
