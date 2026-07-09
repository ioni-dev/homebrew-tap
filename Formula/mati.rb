class Mati < Formula
  desc "Enforcement layer that gates what AI agents read and edit in your code"
  homepage "https://github.com/ioni-dev/mati"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ioni-dev/mati/releases/download/v#{version}/mati-aarch64-apple-darwin.tar.gz"
      sha256 "1153005cb443bfebabf19ae9683caa0e779cdef23c8c703c5c2f4d7601d80499"
    end

    on_intel do
      url "https://github.com/ioni-dev/mati/releases/download/v#{version}/mati-x86_64-apple-darwin.tar.gz"
      sha256 "3309e4c56c2904fe06ae4157275dff2a18ee06ad27205b1961b543c86859dab2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ioni-dev/mati/releases/download/v#{version}/mati-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1074182eb2e77905e516fef36bb4a0971dd31eefa8e7eb02eaed30900e9fb5bc"
    end

    on_intel do
      url "https://github.com/ioni-dev/mati/releases/download/v#{version}/mati-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0c45c2f410029cef3beb301020737a09a56e9e2ee61183582d5cd257ff31aab"
    end
  end

  def install
    bin.install "mati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mati --version")
  end
end
