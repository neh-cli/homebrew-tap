# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Neh < Formula
  desc "neh is a sleek CLI application designed for high-speed, real-time
interaction with AI specializing in Large Language Models."
  homepage "https://github.com/neh-cli/neh"
  version "0.0.25"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.25/neh_Darwin_x86_64.tar.gz"
      sha256 "b251a7d273f83e2299af567dd1631324d355800a2d55bcdc5d35ad41b3ab4ed4"

      def install
        bin.install "neh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neh-cli/neh/releases/download/v0.0.25/neh_Darwin_arm64.tar.gz"
      sha256 "e3a80c1fd9423afbd6b752cf143a6e7cfe9c454c2e1ad7f3815c8ef1a0f4f722"

      def install
        bin.install "neh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.25/neh_Linux_x86_64.tar.gz"
        sha256 "4d6badf43854fa7c0ed42cce7ed9e73ee00a9cf38d7d1567878e0e80fd42daab"

        def install
          bin.install "neh"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.25/neh_Linux_arm64.tar.gz"
        sha256 "e087e3ffa459e369f35320c08e698e67c5f6bc13eac1d93f8d175478db486af1"

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
