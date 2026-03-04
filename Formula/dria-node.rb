class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "1.0.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.1/dria-node-macOS-amd64"
      sha256 "064f437ac6160969811e978cffda48a206c83b4500214eb407d63f514c63f5fe"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.1/dria-node-macOS-arm64"
      sha256 "51b908170f614db9d56065f87fae52534cb5b491e8255cd4a5bf6144e2adcf50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.1/dria-node-linux-amd64"
      sha256 "ed3f9bef8755da0c77a2a8ba0b6784d78744c1dd938201e0a7b6b492d161a984"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v1.0.0-alpha.1/dria-node-linux-arm64"
      sha256 "0b5807bc4a132fa5dcb6e308e17b8187a899cba872a4bdfa6b4fc5f750158dac"
    end
  end

  def install
    binary = Dir.glob("dria-node*").first
    bin.install binary => "dria-node"
  end

  test do
    assert_match "dria-node", shell_output("#{bin}/dria-node --version")
  end
end
