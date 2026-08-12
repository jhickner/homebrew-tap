class Web < Formula
  desc "Chrome in your terminal, streamed into kitty graphics windows"
  homepage "https://github.com/jhickner/web"
  url "https://github.com/jhickner/web/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "130c628abbd8af35ab18c23163003500c79efa5d1bf2d796de5909edc821620d"
  license "MIT"
  head "https://github.com/jhickner/web.git", branch: "master"

  uses_from_macos "vim" => :build # xxd, which the build makes a header with
  uses_from_macos "sqlite"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  def caveats
    <<~EOS
      web drives Google Chrome and draws with kitty graphics, so it needs both:

        brew install --cask google-chrome
        brew install --cask ghostty          # or kitty

      In tmux, add to ~/.tmux.conf:

        set -g allow-passthrough all
    EOS
  end

  test do
    assert_match "usage: web", shell_output("#{bin}/web --help")
  end
end
