class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7f77d22909ef3caad9f13bdcc2ebd4a7411a9aa0aa74a8a87c62990951285861"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fc4c30b7f965ca4feceea23664e9a0291c706b41d399034d8ad2cd40b2eb4897"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddfca786e38ceeb90134055f4868be445bef39d4f84136be6f913bed22dd3d3e"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
