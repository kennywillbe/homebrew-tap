class Mcpgw < Formula
  desc "One binary that manages your MCP servers across every client and gateways their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bd4da7e1591fb1886bb169949017e4f3a1cd8529fa1ba8ab4fc69aaa3ae8cb30"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d252b5142d6d0203088266bbc9c5f5873cc6584bb3581d27da1c710894215d2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fcf72d466d2d4d7ddc574188005f8d5917b6c27138a9aa3608f8ca4d7b73e74"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
