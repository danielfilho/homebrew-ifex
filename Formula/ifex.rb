class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "0.102.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v0.102.0/ifex-macos-x86_64"
      sha256 "54b9e131b03ceb0457c4a5b2f2f439daf3ba46b2959f8942e561bb2277902dfb"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v0.102.0/ifex-macos-aarch64"
      sha256 "2f86b0789c2d47fdfc8832c72c6138556b7030fe08d4a9f5ceedc1d74426859f"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v0.102.0/ifex-linux-x86_64"
      sha256 "d47fd72fca1df2387cf65512f0a777c7d4b75a246362c6223f2f8d467f57d885"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end