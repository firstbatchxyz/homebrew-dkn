class DriaNode < Formula
  desc "Dria Compute Node - run AI inference on the Dria network"
  homepage "https://github.com/firstbatchxyz/dkn-compute-node"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.2/dria-node-macOS-amd64"
      sha256 "422b395b799a4307eb9d747b679f55e83c864c45419a115334190f8f0edaa211"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.2/dria-node-macOS-arm64"
      sha256 "150aaaefdaa72ff0f80f1962d2cae1fc0d9ba4d484aa1eb027a34e32063b92d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.2/dria-node-linux-amd64"
      sha256 "e65b1262622e838eec41a387c08e9daf5af5e85e6d30997b3bb0dfcc873ab8f2"
    end

    on_arm do
      url "https://github.com/firstbatchxyz/dkn-compute-node/releases/download/v0.7.2/dria-node-linux-arm64"
      sha256 "fa22c6550f67f3af63b7dcd8209e024dd88fc6c378f55ff99d71b3830bc16be5"
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
