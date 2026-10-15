# homebrew-rea-ghidra

A personal Homebrew **tap** for [rea-ghidra-setup](https://github.com/yyds8170-ctrl/rea-ghidra-setup) — a
cross-platform, noncommercial installer/orchestrator that sets up [Ghidra](https://ghidra-sre.org/) and
[rea-agents (REA)](https://github.com/morluto/rea-agents).

> PolyForm Noncommercial cannot enter homebrew/core (DFSG-incompatible), so it is distributed via this tap.

## Install

```bash
brew tap yyds8170-ctrl/rea-ghidra
brew install rea-ghidra
```

Then, inside the project:

```bash
rea-ghidra install   # fetch Ghidra/JDK/Node at runtime
rea-ghidra verify    # end-to-end checks
```

## Updating

```bash
brew update && brew upgrade rea-ghidra
```

## Legal / Trademarks

This tap and the formula are maintained by **洋洋 (yyds8170-ctrl)** under PolyForm Noncommercial 1.0.0.
This is an **independent third-party** project. It does not bundle, embed, or redistribute Ghidra or REA
binaries, and it is not affiliated with or endorsed by the NSA, the Ghidra project, or morluto.
"Ghidra" and "REA" are names of their respective owners. See the upstream
[NOTICE](https://github.com/yyds8170-ctrl/rea-ghidra-setup/blob/main/NOTICE) and
[TRADEMARKS](https://github.com/yyds8170-ctrl/rea-ghidra-setup/blob/main/TRADEMARKS.md).
