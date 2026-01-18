# Contributing to Numix Zed Theme

Thank you for your interest in contributing to the Numix Zed Theme! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Making Changes](#making-changes)
- [Submitting Changes](#submitting-changes)
- [Style Guidelines](#style-guidelines)
- [Accessibility Requirements](#accessibility-requirements)
- [Communication](#communication)

## Code of Conduct

This project follows the [Numix Code of Conduct](https://github.com/numixproject/.github/blob/main/CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

## Getting Started

### Prerequisites

- Zed editor installed
- Git
- Basic text editor

### Repository Structure

```
numix-zed-theme/
├── themes/
│   └── numix.json              # Zed theme definition (colors, syntax)
├── extension.toml              # Zed extension manifest
├── LICENSE                     # GPL-3.0 license
├── CHANGELOG.md                # Change history
├── CONTRIBUTING.md             # This file
├── CREDIT.md                   # Credits and attribution
├── README.md                   # Project documentation
├── validate_theme.sh           # Theme validation script
└── .github/
    └── workflows/
        ├── ci.yml             # CI pipeline
        └── release.yml        # Release pipeline
```

## Development Setup

### 1. Fork the Repository

1. Go to [numix-zed-theme](https://github.com/numix-ui/numix-zed-theme)
2. Click the "Fork" button in the top-right corner
3. Clone your fork:

```bash
git clone https://github.com/YOUR-USERNAME/numix-zed-theme.git
cd numix-zed-theme
```

### 2. Set Up Development Environment

```bash
# Install Zed (if not already installed)
# Download from https://zed.dev/

# Verify Zed is installed
zed --version
```

### 3. Create a Branch

```bash
# Create and switch to a new branch
git checkout -b feature/your-feature-name

# Or for bug fixes
git checkout -b fix/your-bug-description
```

## Making Changes

### Theme Development

#### Theme Structure

The theme is defined in `themes/numix.json`. The file contains:

1. **Theme metadata** - name, author, schema
2. **Theme variants** - appearance (dark/light), style
3. **UI colors** - editor background, foreground, accents
4. **Syntax colors** - syntax highlighting categories
5. **Terminal colors** - ANSI terminal palette

#### Color Guidelines

- Use **WCAG AA compliant** colors (minimum 4.5:1 contrast ratio)
- For dark backgrounds, use lighter foreground colors
- Follow the Numix color palette when possible
- Test colors for color blindness compatibility

#### Example: Adding a New Syntax Color

```json
{
  "syntax": {
    "keyword": "#ba68c8",
    "string": "#81c784",
    "newFeature": "#4db6ac"
  }
}
```

### Testing Your Changes

1. **Validate locally**:

```bash
./validate_theme.sh
```

2. **Test in Zed**:

```bash
# Copy theme to Zed themes directory
mkdir -p ~/.config/zed/themes
cp themes/numix.json ~/.config/zed/themes/

# Restart Zed and select Numix theme
```

## Submitting Changes

### 1. Commit Your Changes

Write clear, descriptive commit messages:

```
feat(theme): Add new syntax category for Rust lifetime annotations

- Added support for Rust lifetime syntax
- Updated theme schema to v0.2.0
- Fixed contrast ratio for new colors (WCAG AA compliant)

Closes #123
```

### 2. Push to Your Fork

```bash
git push origin feature/your-feature-name
```

### 3. Create a Pull Request

1. Go to the [original repository](https://github.com/numix-ui/numix-zed-theme)
2. Click "New Pull Request"
3. Select your fork and branch
4. Fill in the PR template
5. Submit the PR

### Pull Request Guidelines

- **One focus per PR**: Keep changes small and focused
- **Validate theme**: Run `./validate_theme.sh` before submitting
- **Update documentation**: Update README, CHANGELOG, or add comments
- **Pass CI**: Ensure all checks pass before requesting review
- **Describe changes**: Explain what you changed and why

## Style Guidelines

### JSON Style

- Use 2 spaces for indentation
- Use lowercase hex colors: `#2a2a2a` not `#2A2A2A`
- Group related colors together
- Follow Zed theme JSON Schema v0.2.0

### Color Style

- Use lowercase hex colors
- Group related colors together
- Maintain consistent saturation/brightness levels
- Document new color additions

### Naming Conventions

- Use descriptive names for syntax categories
- Follow Zed theme naming patterns
- Use consistent casing

## Accessibility Requirements

All contributions must maintain accessibility standards:

### Contrast Ratios

| Text Type | Minimum Ratio |
|-----------|---------------|
| Normal text | 4.5:1 (AA) |
| Large text | 3:1 (AA) |
| UI components | 3:1 (AA) |

### Testing Accessibility

1. **Contrast checker**: Use [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)
2. **Color blindness**: Test with [Coblis](https://www.color-blindness.com/coblis-color-blindness-simulator/)
3. **Keyboard navigation**: Ensure focus states are visible

### Color Blindness Guidelines

- Avoid red/green alone for status (use icons + color)
- Ensure 25%+ luminance difference between similar colors
- Use blue for critical information (universally visible)
- Test with deuteranopia, protanopia, and tritanopia simulations

## Communication

### Issues

- Use [GitHub Issues](https://github.com/numix-ui/numix-zed-theme/issues) for:
  - Bug reports
  - Feature requests
  - Accessibility concerns
  - Questions about the theme

### Discussions

- Use [GitHub Discussions](https://github.com/numix-ui/numix-zed-theme/discussions) for:
  - Questions
  - Ideas and brainstorming
  - Show and tell (share your configs)

### Security

For security vulnerabilities, please email maintainers directly instead of opening public issues.

## Recognition

Contributors will be recognized in:

- CHANGELOG.md
- CREDIT.md
- GitHub release notes
- Project README (for significant contributions)

## Migration from VS Code

This project was migrated from [numix-vscode-theme](https://github.com/numix-ui/numix-vscode-theme). When contributing, note:

- Zed uses tree-sitter instead of TextMate scopes
- Theme structure is simplified (30+ categories vs 100+ scoped rules)
- Schema validation is built-in (v0.2.0)
- See [MIGRATION.md](MIGRATION.md) for details

## Thank You!

Your contributions help make the Numix Zed Theme better for everyone. We appreciate your time and effort!

---

**Questions?** Open an issue or start a discussion.
