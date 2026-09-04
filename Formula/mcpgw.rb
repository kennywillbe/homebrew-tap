class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a72666656c1ac6af75e7f99ed18af9a4e828ae4ec1be5cad7ef19d344c784a25"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "404831c89b9e3e4053fef7be2a0ed424f281c6bf7213a2102ad60e51285d12f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89c9b9569b80474cb640b7c3552e33b324441e2e38644c63a2426e19f5082d04"
    end
    on_arm do
      # 0.4.1 shipped no linux arm64 build; the release bumper fills this in at the next release.
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "755ab7d67d0d3c946367e9bb71252b8fe150777ffa3b2badcacc0fcce54d131a"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
