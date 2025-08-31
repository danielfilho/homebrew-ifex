class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.104.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.104.0/ifex-macos-x86_64"
      sha256 "87111d597833cd0c5e1d882fc4511b13df5fc2d25d29a4a24692a6e6c420db12"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.104.0/ifex-macos-aarch64"
      sha256 "02d30cd043f240b63bc52cdac35b63aab6dcccc2c7f0f621d8c12ec8c59b12f6"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.104.0/ifex-linux-x86_64"
      sha256 "a461135d3d487dbfadbc88114021be0a8c2a0a0ea15d339668cbb14cf18b3ed1"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end