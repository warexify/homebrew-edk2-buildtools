class Zydis < Formula
  desc "Fast and lightweight x86/x86-64 disassembler library"
  homepage "https://zydis.re"
  url "https://github.com/zyantific/zydis/archive/v2.0.3.tar.gz"
  sha256 "9a49b179ee2c787e1887e789867ca5c3a6c5e1fc929548c0a64f81272990ab01"

  head "https://github.com/zyantific/zydis.git"

  bottle :unneeded

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "FormatterHooks"
    bin.install "ZydisDisasm"
    bin.install "ZydisFuzzIn"
    bin.install "ZydisInfo"
    bin.install "ZydisPerfTest"
    include.install Dir["include/*"]
    include.install "ZydisExportConfig.h"
    lib.install "libZydis.a"
  end
end
