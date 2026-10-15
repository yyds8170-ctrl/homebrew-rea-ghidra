# Homebrew formula for rea-ghidra-setup (personal third-party tap).
#
# PolyForm Noncommercial cannot enter homebrew/core (DFSG-incompatible license),
# but third-party taps have no license restriction.
#
# Install:
#   brew tap yyds8170-ctrl/rea-ghidra && brew install rea-ghidra
class ReaGhidra < Formula
  desc "Cross-platform installer/orchestrator for Ghidra + rea-agents (noncommercial)"
  homepage "https://github.com/yyds8170-ctrl/rea-ghidra-setup"
  url "https://github.com/yyds8170-ctrl/rea-ghidra-setup/archive/refs/tags/v4.0.3.tar.gz"
  sha256 "8bc405e226541c6a18879ff63268f05218d6958ff34be423210e70f5bd815b40"
  license "PolyForm-Noncommercial-1.0.0"
  head "https://github.com/yyds8170-ctrl/rea-ghidra-setup.git", branch: "main"

  # Scripts go to libexec; only a thin wrapper lands in bin.
  # Brew does NOT download Ghidra itself — it is fetched at runtime by the scripts.
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"rea-ghidra"
  end

  test do
    system "#{bin}/rea-ghidra", "--help"
  end
end
