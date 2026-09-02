class Mcpgw < Formula
  desc "Manage MCP servers across every client and gateway their traffic"
  homepage "https://kennywillbe.github.io/mcpgw/"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5112c609458b19702957084a783f8d670dad7d103e20a3aebf04e650ff49ad0e"
    end
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a6223e670bb612b8c465eac5b973129af00dcc027dde94e2b4889a233a311e8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kennywillbe/mcpgw/releases/download/v#{version}/mcpgw-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d70d9c5bb624d51d29dbde613d9de99016194bce6827d2f070d1301a1d1d114"
    end
  end

  def install
    bin.install "mcpgw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpgw --version")
  end
end
