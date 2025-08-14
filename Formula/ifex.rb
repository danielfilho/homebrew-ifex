class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.103.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.0/ifex-macos-x86_64"
      sha256 "c644fd3bb959b329c956d89f6ffcb77daca44e42569d1c05a87597113c0f5711"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.0/ifex-macos-aarch64"
      sha256 "66bc4a7e9d2ad089b6fe3f72c1bb7037d012a4b960b870b6016fd54dc6cbd67d"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.0/ifex-linux-x86_64"
      sha256 "ea079f25949b1ff559cdfb852673cf1bff8a6767d04506b05fe7b69c0afca341"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end