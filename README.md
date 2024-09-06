# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## How to use ?

To update all the plugins and everything : Run `nvim` then press `l` to open `lazyvim` then `Sync` everything

### LSP
Setup Using `Mason`

#### Setup Python
1. Install `pyright` using `:Mason`
2. Make `pyright` use the Virtual Environment

- If the `venv` is active in the SHELL, it should be active in neovim. Hence `pyright` will automatically detect it

> Q: Do we need to configure any files ?
> - No

#### clangd
-. Install using `Mason`

**If you face the indentation problem:** Indentation becoming 2 automatically on save

*Reason:* `clangd` uses `ClangFormat engine` for formatting and defaults to LLVM Style Guide (2 spaces indent width)
- Read here : https://github.com/clangd/coc-clangd/issues/345

*Solution:* Create a file `.clang-format` in your current project directory and add the following :

```yaml
BasedOnStyle: LLVM
IndentWidth: 4
TabWidth: 4
UseTab: Never
```

**This will make the configuration work in that Project only. How to make it global ?**
- Create this file `.clang-format` in your `$HOME` directory for global config
