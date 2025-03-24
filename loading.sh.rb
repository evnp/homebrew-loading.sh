class LoadingSh < Formula
  desc "loading.sh · Loading with style in the shell"
  homepage "https://github.com/evnp/loading.sh"
  url "https://github.com/evnp/loading.sh/archive/v0.0.2.tar.gz"
  sha256 "81028fcf7a197dc60fa3eec3afe294304d8e551b11db442e985e6754132ac6d7"
  license "MIT"

  def install
    man1.install "man/loading.sh.1"
    bin.install "loading"
  end

  test do
    assert_equal shell_output("#{bin}/loading 10"), 0
  end
end
