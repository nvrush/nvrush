# Codeootus

![BCO 2ade9fd7-19fd-405d-8be3-9bcf3a23e4c](https://github.com/user-attachments/assets/800826c3-92a8-4980-b1d8-7b2eb83e46c5)

<video src="https://github.com/user-attachments/assets/65301e67-8b47-4cf6-b998-cde671436aa7" autoplay loop muted playsinline></video>

![Screenshot_20251125_072755](https://github.com/user-attachments/assets/b0ad4069-4c9e-40f7-a000-423205d2420e)

---

## The Problem

You open your editor. Themes break. Plugins conflict. Sessions vanish. Your device isn't supported. You waste hours configuring what should just work. The pain compounds daily.

Every developer knows this story. We've lived it. The fragmentation, the configuration hell, the endless tinkering that steals time from actual coding. Modern development shouldn't feel like assembling furniture without instructions.

## The Solution

Codeotus eliminates the chaos. Not by adding more features, but by solving the problems that actually matter. It's a Neovim configuration that understands what developers need: speed, stability, and zero friction between thought and code.

Built on battle-tested plugins, refined through thousands of lines of configuration, and designed for humans who want to write code instead of maintaining their editor. This isn't about chasing trends. This is about removing obstacles.

Space is your leader key. Everything follows from there.

---

## What Makes This Different

**85 themes that actually work.** Switch between Rose Pine, Catppuccin, Gruvbox, and 82 others without breaking your workflow. No configuration required. No surprises.

**File motion that feels telepathic.** Harpoon, Telescope, Oil, Arrow, and Snipe working in harmony. Navigate codebases like you're reading your own thoughts. Find anything in seconds.

**Sessions that remember everything.** Lost work is a solved problem. Resession captures your entire workspace state. Come back tomorrow and pick up exactly where you left off.

**LSP integration without the headache.** Preconfigured servers for C, C++, Go, Lua, TypeScript, PHP, Markdown, GDScript, and more. Add new ones in minutes. Mason handles the complexity.

**Two completion engines because choice matters.** Default to nvim-cmp for reliability. Switch to blink-cmp when you want bleeding edge. Both configured perfectly.

**Resource efficient by design.** Runs on a Snapdragon 4 Gen 1. If your hardware can boot, it can run Codeotus. Performance isn't a luxury feature.

---

## Core Philosophy

Speed without sacrifice. Features without bloat. Power without complexity.

Every plugin serves a purpose. Every keybinding solves a problem. Every default makes sense. We removed the noise so you can focus on signal.

This configuration respects three truths: your time is valuable, your workflow is personal, and your code deserves an environment built for creation, not configuration.

---

## Built For Real Work

Integrated terminal that doesn't interrupt flow. Lazygit for version control that stays out of your way. Zen mode when you need deep focus. Multiple sessions when you're juggling projects.

Treesitter for syntax that understands context. Statusline and bufferline showing what matters. Notifications that inform without distracting. Inline diagnostics only when you're ready to see them.

Snippet support for reducing repetition. Formatting that happens automatically. Startup screen that gets you oriented. Comments, surround operations, and block movements that feel natural.

Everything works together because it was designed to work together.

---

## Getting Started

### Requirements

Neovim 0.10 or higher. Git at the latest version. About 200MB of disk space for the initial setup. Plugin downloads will use 100-200MB of bandwidth.

### Installation

Clone and launch in one motion:

```sh
mkdir -p ~/.config/Codeotus
cd ~/.config/Codeotus
git clone https://github.com/Codeotus/Codeotus.git .
NVIM_APPNAME=Codeotus nvim
```

Create an alias for convenience:

```sh
# Bash
echo "alias cod='NVIM_APPNAME=Codeotus nvim'" >> ~/.bashrc
source ~/.bashrc

# Zsh
echo "alias cod='NVIM_APPNAME=Codeotus nvim'" >> ~/.zshrc
source ~/.zshrc
```

Launch with `cod` from anywhere.

Note: On first launch, reload your colorscheme with `:colorscheme gruvbox-baby` if themes appear washed out.

### Removal

Clean uninstall when you need it:

```sh
rm -rf ~/.config/Codeotus/
rm -rf ~/.local/share/Codeotus/
```

---

## Architecture

The configuration spans 90 files across 24 directories. Despite the size, it's maintainable. Ninety-five percent of features work out of the box and stay working.

Project structure:

```tree
├── Books
│   └── LifeBookQuotes.md
├── LICENSE
├── README.md
├── docs
│   ├── assets
│   ├── css
│   ├── index.html
│   └── js
├── for_noobs
├── init.lua
├── lazy-lock.json
└── lua
    └── user
        ├── Basics
        │   ├── autoreload.lua
        │   ├── env.lua
        │   ├── mappings.lua
        │   ├── mason.lua
        │   ├── options.lua
        │   ├── plugins.lua
        │   └── utilities.lua
        ├── CustomCmp
        │   ├── cmp-gd.lua
        │   ├── gdscript_autocompletion.json
        │   └── source-gd.lua
        ├── Inbuilt
        │   ├── comment.lua
        │   └── luanmulti.lua
        ├── Mini
        │   ├── mini_icons.lua
        │   ├── mini_notify.lua
        │   └── mini_surround.lua
        ├── NerdFonts
        │   ├── JetBrains Mono NL SemiBold Nerd Font Complete Mono.ttf
        │   ├── JetBrains Mono NL SemiBold Nerd Font Complete.ttf
        │   ├── JetBrains Mono Regular Nerd Font Complete Mono.ttf
        │   ├── JetBrains Mono Regular Nerd Font Complete.ttf
        │   ├── JetBrainsMonoNerdFont-Regular.ttf
        │   ├── JetBrainsMonoNerdFont-SemiBold.ttf
        │   └── NerdFonts.md
        ├── Overridder
        │   ├── Caller.lua
        │   └── gruvbox_ts.lua
        ├── PluginExtensionConfiguration
        │   └── overseer.lua
        ├── Read
        │   └── ABOUT
        │       └── Keys.md
        ├── UI
        │   ├── DAP_UI.lua
        │   ├── IBL.lua
        │   ├── NoMoreItalics.lua
        │   ├── SetGlobalTheme.lua
        │   ├── ascii.lua
        │   ├── bold_text.lua
        │   ├── bufferline.lua
        │   ├── colors.lua
        │   ├── custom_treesitters.lua
        │   ├── dashboard.lua
        │   ├── diagonasticsigns.lua
        │   ├── dressing.lua
        │   ├── gitsigns.lua
        │   ├── noice.lua
        │   ├── notify.lua
        │   ├── snacks.lua
        │   ├── statusline.lua
        │   ├── theme.lua
        │   └── windows.lua
        ├── config
        │   ├── IdeBatch
        │   │   ├── arrow.lua
        │   │   ├── comments.lua
        │   │   ├── harpoon.lua
        │   │   ├── lazygit.lua
        │   │   ├── multiselect.lua
        │   │   ├── neoscroll.lua
        │   │   ├── nvimtree.lua
        │   │   ├── oil.lua
        │   │   ├── refactoring.lua
        │   │   ├── sessions.lua
        │   │   ├── showkey.lua
        │   │   ├── snipe.lua
        │   │   ├── surround.lua
        │   │   ├── telescope.lua
        │   │   ├── todo.lua
        │   │   ├── toggleterm.lua
        │   │   ├── treesitter.lua
        │   │   ├── whkey.lua
        │   │   └── workspace.lua
        │   └── LspBatch
        │       ├── autopairs.json
        │       ├── autopairs.lua
        │       ├── blinkCmp.lua
        │       ├── cmd_cmp.lua
        │       ├── cmp.lua
        │       ├── formatter.lua
        │       ├── lsp.lua
        │       ├── lspkind.lua
        │       ├── luasnip.lua
        │       ├── navic.lua
        │       └── trouble.lua
        ├── json
        │   └── harpoon_storage.json
        └── snippets
            ├── c.json
            ├── cpp.json
            ├── go.json
            ├── html.json
            ├── json.json
            ├── lua.json
            ├── package.json
            └── rs.json
```

Generate this view with: `tree ~/.config/Codeotus/`

---

## Extending The System

### Adding Language Servers

Edit `~/.config/Codeotus/lua/user/config/LspBatch/lsp.lua` and add your server to the configuration table.

Preconfigured support includes clangd for C and C++, gopls for Go, lua_ls for Lua, vtsls for web technologies, marksman for Markdown, phpactor for PHP, taplo for TOML, and gdscript for game development.

Codeotus provides the configuration layer. Download and install LSP servers through Mason or your system package manager.

### Creating Custom Snippets

Drop snippet files into `~/.config/Codeotus/lua/user/Snippets/` using VSCode JSON format. Name files after the target language: `c.json`, `python.json`, `rust.json`.

---

## Current Status

Recent improvements include removing bloated plugins, enhancing nvim-cmp with better defaults, and implementing blink-cmp as an alternative completion engine with command line support.

Active development focuses on refining keymappings and improving workspace functionality.

This configuration maintains itself through regular updates at the configuration level. The mini.nvim ecosystem integration continues to evolve based on real-world usage patterns.

---

## The Reality

Codeotus is maintained by a single developer. No corporate backing, no team of contributors, no marketing budget. Features get added when they're needed or when they solve real problems.

Some keybindings might feel unnecessary at first. The learning curve exists but it's intentional, not accidental. Seven thousand lines of configuration reflect years of refinement, not complexity for its own sake.

This is direct, battle-tested code. No previous versions to fall back on. Just the latest build, pushed live after real use. It works because it has to work.

---

## License and Attribution

Released under MIT License. Use it, modify it, distribute it. The code is yours.

Thanks to every plugin author who built the tools that make this possible. The Neovim community creates the foundation. Codeotus just assembles the pieces in a way that solves problems.

Previous documentation generated by Dotfyle. This version written to communicate clearly what this project actually does and why it exists.

Built for people who code, by someone who codes.

---

**If this solves your problems, star the repository. If it doesn't, fork it and make it better.**
