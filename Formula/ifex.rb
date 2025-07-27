class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "0.101.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v0.101.0/ifex-macos-x86_64"
      sha256 "25a9ab1603cc86eee49f8b14854faf4e08dc2379b47ab1816708c5497ef0df0d"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v0.101.0/ifex-macos-aarch64"
      sha256 "f9a3d4f85b35b4d9119e8c1d4ab767308cf4beb2d2a3a4f812e0e984c8489680"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v0.101.0/ifex-linux-x86_64"
      sha256 "6fce1087e0b1352d86059ac25df57a97846da4cee9da3a4503185b83cd294dee"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end