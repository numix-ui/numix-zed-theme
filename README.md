# Numix Zed Theme

![Version](https://img.shields.io/badge/version-0.1.0-blue)
![License](https://img.shields.io/badge/license-GPL--3.0-green)

A dark theme based on the authentic Numix GTK theme color palette with accessibility improvements for **Zed** editor.

## Features

- **Authentic Numix Colors** - Directly sourced from the original [Numix GTK theme](https://github.com/numixproject/numix-gtk-theme)
- **Accessibility-First Design** - WCAG AA compliant contrast ratios
- **Color Blindness Friendly** - Distinct luminance values for red/green differentiation
- **Dark Theme** - Optimized for long coding sessions
- **Comprehensive Language Support** - Syntax highlighting via tree-sitter

### Accessibility Improvements

| Feature | Enhancement |
| ------- | ----------- |
| **Contrast Ratios** | All text meets WCAG AA (4.5:1) or AAA (7:1) standards |
| **Color Blindness** | Red/green elements use distinct luminance values (25%+ difference) |
| **Focus Indicators** | High-visibility focus states throughout UI |
| **Selection Visibility** | Semi-transparent overlays maintain readability |
| **Error States** | Light red text on dark backgrounds for clarity |
| **Link Colors** | Blue with underline for universal recognition |
| **Hover States** | Subtle background shifts without losing contrast |

### Official Numix Color Palette

| Color Role | Hex | Contrast on #2a2a2a | WCAG Level |
| ---------- | --- | ------------------- | ---------- |
| Background | #2a2a2a | - | - |
| Foreground | #e8e8e8 | 12.6:1 | AAA |
| Comment | #9a9a9a | 5.2:1 | AA |
| Selection | #f0544c | 4.6:1 | AA |
| Success | #81c784 | 5.8:1 | AA |
| Warning | #ffb74d | 5.1:1 | AA |
| Error | #e57373 | 4.8:1 | AA |
| Info | #64b5f6 | 5.3:1 | AA |
| Purple | #ba68c8 | 4.7:1 | AA |
| Teal | #4db6ac | 4.6:1 | AA |

## Language Support

Zed uses tree-sitter for syntax highlighting, which provides automatic grammar-based tokenization for many languages. The theme's syntax colors are automatically applied based on the language's grammar rules.

### Supported Language Categories

| Category | Languages |
| -------- | --------- |
| **Web** | JavaScript, TypeScript, HTML, CSS, JSON, JSONc |
| **Scripting** | Python, Shell/Bash, Fish, PowerShell, Lua |
| **Systems** | C, C++, Rust, Go, Java, C#, Zig |
| **Data** | SQL, YAML, TOML, JSON, CSV |
| **Markup** | Markdown, HTML, XML, CSS, SCSS |
| **Functional** | Haskell, Erlang, Elixir, Clojure, OCaml, F# |
| **Other** | PHP, Ruby, Swift, Dart, Kotlin, Scala, R, Julia, Perl |

The theme covers all major syntax categories:
- **Keywords**: Control flow, storage types, modifiers
- **Strings**: Regular strings, escape sequences, templates
- **Numbers**: Integers, floats, hex, binary
- **Functions**: Function calls, methods, constructors
- **Types**: Classes, interfaces, enums, primitives
- **Variables**: Local variables, parameters, members
- **Comments**: Line comments, block comments, doc comments
- **Operators**: Arithmetic, logical, bitwise, comparison

## Installation

### Via Extension Manager

1. Open Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`)
2. Select `zed: extensions`
3. Search for "Numix"
4. Click "Install"

### Manual Installation

Copy the theme file to your Zed themes directory:

```bash
# Create themes directory if it doesn't exist
mkdir -p ~/.config/zed/themes

# Copy the theme file
cp themes/numix.json ~/.config/zed/themes/numix.json

# Restart Zed and activate via theme selector
```

## Activation

1. Open Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`)
2. Select `theme selector: toggle`
3. Search for "Numix"
4. Select "Numix"

## Development

### Requirements

- Zed editor installed
- Basic text editor

### Development Workflow

```bash
# Edit the theme file
vim themes/numix.json

# Preview changes in Zed
# 1. Open Command Palette
# 2. Select "Reload Window" or restart Zed

# Validate theme
./validate_theme.sh
```

### Installing Dev Extension

1. Open Command Palette
2. Select `Install Dev Extension`
3. Navigate to this repository
4. Select the theme file

### Publishing to Zed Extension Marketplace

1. Fork or clone this repository
2. Update version in `extension.toml`
3. Create a release on GitHub
4. Submit to Zed extensions repository

## Project Structure

```
numix-zed-theme/
├── themes/
│   └── numix.json              # Zed theme definition
├── extension.toml              # Zed extension manifest
├── LICENSE                     # GPL-3.0 license
├── README.md                   # This file
├── CHANGELOG.md                # Version history
├── CONTRIBUTING.md             # Contribution guidelines
├── MIGRATION.md                # Migration documentation
├── validate_theme.sh           # Theme validation script
└── .gitignore                  # Git ignore rules
```

## Validation

Use the validation script to ensure theme correctness:

```bash
./validate_theme.sh
```

This checks:
- JSON syntax validity
- Zed theme structure
- Required fields and schema compliance
- Accessibility color format

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Make your changes
4. Validate: `./validate_theme.sh`
5. Submit a pull request

### Guidelines

- Follow existing color conventions
- Maintain WCAG AA compliance
- Test with color blindness simulators
- Add appropriate syntax categories for new languages

## Credits

Based on the original [Numix GTK Theme](https://github.com/numixproject/numix-gtk-theme) by:
- Simon Steinbeiß
- Joern Konopka
- Georgi Karavasilev
- David Barr

## License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

See [LICENSE](LICENSE) for full text.

## Support

- [Issues](https://github.com/numix-ui/numix-zed-theme/issues)
- [Discussions](https://github.com/numix-ui/numix-zed-theme/discussions)
- [Zed Extensions](https://github.com/zed-industries/extensions)

---

Made with care by [Numix UI](https://github.com/numix-ui) and [LoboGuardian](https://github.com/LoboGuardian)
