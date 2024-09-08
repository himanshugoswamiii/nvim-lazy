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

## Keymaps
If you want to override an existing mapping, make sure to disable it first in the correct place.

## Plugins

### flash.nvim
- Using it to jump cursor to anywhere in the visible screen
- Keybinded to `f`

---

## Things I'm removing form LazyVim
I'll refer this if i want to look at things i want back

### Keybindings 

You can delete the Keybindings using `vim.keymap.del( modes , keybinding)`

Some Keybindings that i removed are from them
- Lazygit : Since i am not using it I'm removing them for now
- Windows
- buffers

**Example:**
```lua
-- lazygit
vim.keymap.del("n", "<leader>gg")
```

### Telescope Keybindings

Removed using :

```lua
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disabling extra keymaps
    { "<leader>/", false }, -- grep text (root dir) : i'll use <leader> + s + g
    { "<leader>:", false }, -- command history : i'll use <leader> + s + c
    { "<leader><space>", false }, -- Find files : i'll use <leader> + f + f
    { "<leader>,", false }, -- Switch buffer : Use <leader> + f + b
  },
}
```
