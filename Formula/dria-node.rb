class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.4/dria-node-macOS-amd64"
      sha256 "b56de9bec296f07c19ae0d5edcca9ed85c3181cb4bca63f87a29497546cdcff2"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.4/dria-node-macOS-arm64"
      sha256 "7235e199138375f11ef0c73eb317863fd6c4460c43fb9901630feed2b482b94d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.4/dria-node-linux-amd64"
      sha256 "4fd01532147917f7455969e09587af71d768cba0e9c347a964a355cf1f51937e"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.4/dria-node-linux-arm64"
      sha256 "0a9a84f99a554164c750a96e03cb2bfb3c56922e459c664052be49175d919d61"
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
