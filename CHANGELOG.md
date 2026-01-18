# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2026-01-18

### Added

- Initial release of Numix Zed Theme
- **Authentic Numix Colors** - Colors directly sourced from the original Numix GTK theme
- **Accessibility-First Design** - WCAG AA compliant contrast ratios
- **Color Blindness Friendly** - Distinct luminance values for red/green differentiation
- **Comprehensive Language Support** via tree-sitter:
  - Web: JavaScript, TypeScript, HTML, CSS, JSON, JSONc
  - Scripting: Python, Shell/Bash, Fish, PowerShell, Lua
  - Systems: C, C++, Rust, Go, Java, C#, Zig
  - Data: SQL, YAML, TOML, JSON, CSV
  - Markup: Markdown, HTML, XML, CSS, SCSS
  - Functional: Haskell, Erlang, Elixir, Clojure, OCaml, F#
  - Other: PHP, Ruby, Swift, Dart, Kotlin, Scala, R, Julia, Perl
- **Complete Terminal Colors** - Full ANSI color palette support
- **Simplified Theme Structure** - 30+ syntax categories vs 100+ scoped rules

### Features

- Zed extension manifest (extension.toml)
- GitHub Actions CI/CD pipelines
- Theme validation script (validate_theme.sh)
- JSON schema validation (v0.2.0)

### Accessibility

- All text meets WCAG AA (4.5:1) or AAA (7:1) contrast standards
- High-visibility focus states throughout UI
- Semi-transparent selection overlays maintain readability
- Light red text for error states on dark backgrounds
- Blue with underline for links (universal recognition)
- Subtle hover states without losing contrast
- Color blindness tested with distinct luminance values

### Technical

- Zed editor compatibility
- GPL-3.0 license
- JSON Schema v0.2.0

### Migration

- Migrated from VS Code theme (numix-vscode-theme)
- Simplified syntax highlighting model for tree-sitter
- Reduced theme complexity while maintaining visual consistency

### Credits

Based on the original [Numix GTK Theme](https://github.com/numixproject/numix-gtk-theme) by:
- Simon Steinbeiß
- Joern Konopka
- Georgi Karavasilev
- David Barr

[0.1.0]: https://github.com/numix-ui/numix-zed-theme/releases/tag/v0.1.0
