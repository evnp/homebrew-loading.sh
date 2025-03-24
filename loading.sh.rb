class LoadingSh < Formula
  desc "loading.sh · Loading with style in the shell"
  homepage "https://github.com/evnp/loading.sh"
  url "https://github.com/evnp/loading.sh/archive/v0.0.2.tar.gz"
  sha256 "47a7342e2dfd893d1fb3ee073ebf1cf5b67e92102d5fb034dfe10a87cc21a5d9"
  license "MIT"

  def install
    man1.install "man/loading.sh.1"
    bin.install "loading.sh"
  end

  test do
    assert_equal shell_output("#{bin}/loading.sh 10"), 0
  end
end
