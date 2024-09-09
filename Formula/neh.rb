# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Neh < Formula
  desc "Lightweight CLI client for interacting with AI using large language models (LLM)"
  homepage "https://github.com/neh-cli/neh"
  version "0.0.2"
  license "MIT"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/neh-cli/neh/releases/download/v0.0.2/neh_Darwin_x86_64.tar.gz"
      sha256 "d0eda81a1963a104acfc02f0fe3e44ae3054682dcd967790b80e43b9b9b4fe1f"

      def install
        bin.install "neh"
      end
    end
    on_arm do
      url "https://github.com/neh-cli/neh/releases/download/v0.0.2/neh_Darwin_arm64.tar.gz"
      sha256 "0ca01b3916bb38f684fe635f55534dd23124c98937970d2de52f4ebf7a0c0279"

      def install
        bin.install "neh"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.2/neh_Linux_x86_64.tar.gz"
        sha256 "e4681743b2f8c8419867d1b8f27058771d47866f96686dcc143c5dc2e42aa750"

        def install
          bin.install "neh"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/neh-cli/neh/releases/download/v0.0.2/neh_Linux_arm64.tar.gz"
        sha256 "c15931d8901c3fecc2042e1a0c51a2dd0c4882dd36260fea6fddd2380ebb2dbc"

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
