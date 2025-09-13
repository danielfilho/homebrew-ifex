class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.105.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.0/ifex-macos-x86_64"
      sha256 "d33796c8c9585c89ada15775d64c1d9162588f44cfaf7026f65563271ba85242"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.0/ifex-macos-aarch64"
      sha256 "2b3ec07e322d149fca9df6be61171a9179cfe2e254db992b100515e4c8bc2a92"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.0/ifex-linux-x86_64"
      sha256 "69d0075d4b67919f1de35395e3dc620a5105a9149014620ab23aa26320d7ec9f"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end