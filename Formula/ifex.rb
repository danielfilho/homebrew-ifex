class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.103.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.1/ifex-macos-x86_64"
      sha256 "35168c3b8614156a4e61cafc0d90a7c0a4070bb1fe5cc68eac382d5d0aaa9a77"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.1/ifex-macos-aarch64"
      sha256 "e9f7adb4361f94b547fbbb917f025534e70215e5f7f9868f5a00400e9072461e"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.103.1/ifex-linux-x86_64"
      sha256 "77ce9eb72f2ec33337785fa4e47803111845b1715972870b6f1244752a1412e3"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end