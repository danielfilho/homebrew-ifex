class Ifex < Formula
  desc "A modern CLI tool for managing EXIF data in JPEG, TIFF, DNG and RAW image files"
  homepage "https://github.com/danielfilho/ifex"
  version "1.105.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.1/ifex-macos-x86_64"
      sha256 "e6dd65e665b7c3512552aa04c8ca5f960b3ac19337af91c28d9ac7320d7c510c"

      def install
        bin.install "ifex-macos-x86_64" => "ifex"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.1/ifex-macos-aarch64"
      sha256 "eb1d70631bec6f47fe63e6a3095655c7d123cb51c53036b0e8dfc595ff22ad02"

      def install
        bin.install "ifex-macos-aarch64" => "ifex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/danielfilho/ifex/releases/download/v1.105.1/ifex-linux-x86_64"
      sha256 "2d935eb9091555446c917fa65ffbd9a44634620485f17dbd7a0e22db7c9c5c22"

      def install
        bin.install "ifex-linux-x86_64" => "ifex"
      end
    end
  end

  test do
    system "#{bin}/ifex", "--version"
  end
end
