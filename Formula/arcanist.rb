class Arcanist < Formula
  desc ""
  homepage "https://github.com/starccck/homebrew-proto"
  head "https://github.com/phacility/arcanist", revision: "b81818b287db01", :using => :git
  version "1.0.0"

  depends_on "git" => :build
  depends_on "php"

  def install
    prefix.install Dir["./*"]
  end
end
