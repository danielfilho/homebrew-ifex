class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.103.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.3/ifex-macos-x86_64"
      sha256 "3360b4ead0610e06bba87fd80295e1df4d38605067f1a004dd5afd2f2fe5c855"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.3/ifex-macos-aarch64"
      sha256 "cc669b11a51b50ec261d8b61dd12156d45489e6426fcc19439c575c322a8623f"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.3/ifex-linux-x86_64"
      sha256 "18cac5aab5b4786c358167edd9d844dd6da77afc076ebb93e44cd74a02771f7e"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end