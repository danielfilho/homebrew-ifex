class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.103.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.2/ifex-macos-x86_64"
      sha256 "65575fd6c31ca60311f74dc1446ebe14dc0d6e04da0ed4f9c1a32743428f28b4"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.2/ifex-macos-aarch64"
      sha256 "dd500a0e9a03f262844d30ba026e48e50531aeaedbfddd522ebab2026a45d312"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.2/ifex-linux-x86_64"
      sha256 "6640d6367803f26a3cab62fbd308688889558583b3d3664e6ede30702b89bf50"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end