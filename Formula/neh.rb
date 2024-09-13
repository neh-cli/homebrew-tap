# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Neh < Formula
  desc "Lightweight CLI client for interacting with AI using large language models (LLM)"
  homepage "https://github.com/neh-cli/neh"
  version "0.0.6"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/neh-cli/neh/releases/download/v0.0.6/neh_Darwin_x86_64.tar.gz"
      sha256 "f6a35c7ee198df26bebabf3309a2e639a4222fb455ec4e86472f05575eee8b5b"

      def install
        bin.install "neh"
      end
    end
    on_arm do
      url "https://github.com/neh-cli/neh/releases/download/v0.0.6/neh_Darwin_arm64.tar.gz"
      sha256 "f2f9cfca50c0746e5236e6b00f65fdb1ffad99acdf90d416c12a3018a5559d05"

      def install
        bin.install "neh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.6/neh_Linux_x86_64.tar.gz"
        sha256 "69b325657f0bddef26145e39e03fa2aab4a880692720e5db4cf610709ec4121d"

        def install
          bin.install "neh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.6/neh_Linux_arm64.tar.gz"
        sha256 "9160425c60a6e65198cb38f4a1e0818bf5e8a6367f2413949695a034efc49e3a"

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
