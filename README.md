# 🚀 NvRush
> [!Important]
> **A paradise for lazy developers** — Experience the power of a blazing-fast, offline IDE with the elegance of Vim/Neovim. All the features you love, none of the bloat.

<div align="center">
<img width="800" height="800" alt="NvRush's Logo" src="https://github.com/user-attachments/assets/b96db7fd-6aa8-47e7-a360-71f3b1152ac7" />
</div>

---

## ✨ Why NvRush?

NvRush delivers the perfect balance between functionality and minimalism with a crystal-clear structure:

- ⚡ **Blazing Fast** — Lightning-quick startup and response times with optimized lazy-loading via `lazy-lock.json`
- 🪶 **Featherweight** — Only ~6MB, incredibly light on resources with zero bloat
- 🎯 **Efficient Like IDEs** — Full LSP batch (`LspBatch/`) with completion, formatting, and debugging without the heavyweight baggage
- ✏️ **Fully Integrated Editing** — Complete IDE features (`IdeBatch/`) including Harpoon, Telescope, refactoring tools, and session management
- 🔄 **Workflow Made Easy** — Organized `Basics/` folder with clear mappings, options, and utilities—everything you need to understand quickly
- 🎨 **Beautiful Themes** — Customizable UI (`UI/` folder) with 15+ components including statusline, bufferline, dashboard, and theme overrides
- 🔌 **Offline First** — No internet required, complete privacy guaranteed with bundled NerdFonts for perfect icon rendering
- 🛠️ **Pre-configured** — Ready to use out of the box with smart defaults, but easily tweakable via organized config structure
- 🧠 **Smart & Intuitive** — Dedicated `Read/` folder with documentation for leader mappings, simplified mappings, and quick reference guides
- 🔧 **Highly Customizable** — Override anything via `Overridder/` without touching core configs—your theme, your rules
- 📦 **Language-Ready** — Pre-loaded snippets (`snippets/`) for C, C++, Go, HTML, JSON, Lua, and Rust with JSON-based customization
- 🗂️ **Logically Organized** — Separated concerns: `Basics/` for core, `UI/` for interface, `config/` for features, `Inbuilt/` for built-in enhancements

> [!IMPORTANT]
> NvRush is 1000x better than bloated online editors while maintaining the soul of Vim/Neovim. Every file has a purpose, every folder tells a story.

---

## 📥 Installation

### Quick Install

```bash
# Create your custom config directory
mkdir -p ~/.config/rv

# Navigate to the directory
cd ~/.config/rv

# Clone NvRush
git clone https://github.com/nvrush/NvRush.git ~/.config/rv

# Launch NvRush for the first time
NVIM_APPNAME=rv nvim

# Optional: add to zshrc or bashrc and then source it 
# alias rv='NVIM_APPNAME=rv nvim'
```

> [!NOTE]
> Replace `rv` with your preferred directory/launcher name (e.g., `nvrush`, `rv`, or `mynvim`).

### Setting Up an Alias (Optional but Recommended)

Add this to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
alias rv='NVIM_APPNAME=rv nvim'
```

Then reload your shell:

```bash
source ~/.bashrc  # or ~/.zshrc for Zsh users
```

> [!NOTE]
> After the first launch, plugins will install automatically. This may take a minute — be patient and let the magic happen! ✨

---

## 🚦 Getting Started

### First Launch

1. **Initial Setup** — Run `rv` (or your custom alias) for the first time
2. **Plugin Installation** — Wait for automatic plugin installation to complete
3. **Ready to Code** — Start editing with your new supercharged setup!

> [!IMPORTANT]
> The `NVIM_APPNAME` environment variable ensures NvRush runs independently from your main Neovim configuration. This means you can test NvRush without affecting your existing setup!

### Launch Commands

```bash
# Using the full command
NVIM_APPNAME=rv nvim

# Using your alias (if configured)
rv

# Open a specific file
rv myfile.lua
```

---

## 💎 Features

### What You Get

- **Custom Treesitter Theming** — No pre-baked configurations here! Define your own theme-based Treesitter colors, giving you complete control over syntax highlighting that matches YOUR vision

- **Smart Auto-Pairs** — Intelligent bracket and quote completion that understands context, configured via JSON for easy customization without touching complex code

- **Powerful LSP Integration** — Full language server support with custom formatters, letting you shape code formatting rules to your team's standards, not generic defaults

- **Blazing Telescope Fuzzy Finder** — Lightning-fast file, text, and symbol search across your entire workspace with customizable keybindings that feel natural to YOU

- **Harpoon Quick Navigation** — Mark your most-used files and jump between them instantly, because real productivity means eliminating friction from your workflow

- **Beautiful Dashboard** — A welcoming startup screen that's not just pretty—it's functional, giving you quick access to recent files and projects

- **Session Management** — Pick up exactly where you left off with automatic session saving and restoration, preserving your entire workspace state

- **Multi-Select Editing** — Edit multiple locations simultaneously with visual feedback, because repetitive editing is for machines, not developers

- **Smart Indentation Guides** — Visual indent lines that help you navigate nested code structures at a glance, fully themeable to match your aesthetic

- **Snacks UI Enhancements** — Smooth animations and transitions that make your editor feel alive without sacrificing performance

- **Noice Notifications** — Beautiful, non-intrusive notification system that keeps you informed without breaking your flow

- **Git Integration** — Visual git signs in your gutter showing added, modified, and deleted lines, plus easy access to blame and diff views

- **Integrated Terminal** — Toggle a terminal without leaving your editor, configured with smart keybindings for seamless workflow integration

- **Custom Snippets** — Pre-loaded snippets for C, C++, Go, HTML, JSON, Lua, and Rust—but you're free to add your own or modify existing ones to match your coding style

- **Trouble Diagnostics** — Aggregate all your errors, warnings, and LSP diagnostics in one beautiful, navigable list instead of hunting through files

- **Legendary Command Palette** — A searchable command palette giving you quick access to every function, because memorizing hundreds of keybindings is optional

- **TODO Comments Highlighting** — Automatically highlights and collects TODO, FIXME, HACK, and other comment tags across your project for easy tracking

- **Refactoring Tools** — Built-in refactoring capabilities that let you rename, extract, and restructure code safely across your entire codebase

- **Workspace Management** — Organize multiple projects and switch between them effortlessly, each with its own session and configuration

- **NvimTree File Explorer** — A powerful, fast file tree with git integration, custom icons, and keybindings that make file management feel effortless

- **DAP Debug UI** — Full debugging interface with breakpoints, variables inspection, and step-through debugging for supported languages

- **Bufferline Tabs** — Beautiful, informative buffer tabs showing your open files with close buttons, diagnostics, and git status at a glance

- **Custom Statusline** — Information-rich status bar showing mode, file info, git branch, LSP status, and diagnostics—all fully customizable

- **Auto-Reload** — Files changed externally? NvRush automatically reloads them, keeping your editor in sync with your filesystem

- **Smooth Scrolling** — Buttery-smooth animated scrolling that makes navigating large files feel natural and pleasant

- **Comment Toggling** — Smart comment/uncomment that understands your language's syntax and respects indentation

- **Bold Text Emphasis** — Strategic bold text in the UI for better readability and visual hierarchy without overwhelming your eyes

- **Dressing Enhancements** — Improved vim.ui interfaces with better input and select dialogs that feel modern and intuitive

### Performance

- **Startup Time** — Launches in milliseconds, not seconds
- **Memory Usage** — Incredibly lightweight, runs smoothly even on modest hardware
- **Responsive** — Smooth editing even with large files and complex projects
- **Battery Friendly** — Efficient resource usage extends laptop battery life

---

## 🎯 Perfect For

- **Minimalists** — Who want power without complexity
- **Speed Demons** — Who demand instant response times
- **Privacy Advocates** — Who prefer offline-first solutions
- **Vim Enthusiasts** — Who love modal editing and efficiency
- **Resource-Conscious Devs** — Working on older or lower-spec machines
- **Terminal Lovers** — Who live in the command line

---

## ⚖️ Pros & Cons

### Pros ✅

You already know them — that's why you're here! 😉

### Cons ⚠️

Go ahead and find them — we dare you! If you discover any, feel free to contribute or open an issue.

---

## 🤝 Contributing

Found a bug or have a feature request? Contributions are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📜 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🌟 Support

If NvRush makes your development life easier, consider:

- ⭐ **Starring** the repository
- 🐛 **Reporting** bugs and issues
- 💡 **Suggesting** new features
- 📢 **Sharing** with fellow developers
- 💬 **Joining** discussions and helping others

---

<div align="center">
  <sub>Built with ❤️ for developers who value speed, elegance, and simplicity</sub>
</div>
