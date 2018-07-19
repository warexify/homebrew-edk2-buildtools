class Csrstat < Formula
  desc "Command line tool to get the active System Integrity Protection status"
  homepage "https://github.com/Piker-Alpha/csrstat"
  url "https://github.com/vulgo/csrstat/archive/v1.8.tar.gz"
  head "https://github.com/Piker-Alpha/csrstat.git"
  sha256 "0ae4d31b5d1eef60ac7644651017df7296a2ed7575cec19a7b587d25a7c0d3f1"
  version "1.8"

  def install
    system "make", "csrstat"
    bin.install "csrstat"
  end
end