#!/bin/bash
set -e

echo "Validating Numix Zed Theme..."

# Check theme file exists
if [ ! -f "themes/numix.json" ]; then
    echo "ERROR: themes/numix.json not found"
    exit 1
fi

echo "[1/4] Checking JSON syntax..."
python3 -c "import json; json.load(open('themes/numix.json'))" || exit 1
echo "  OK: Valid JSON"

echo "[2/4] Checking theme structure..."
python3 << 'EOF' || exit 1
import json
with open('themes/numix.json') as f:
    theme = json.load(f)
    assert 'name' in theme, 'Missing name'
    assert 'themes' in theme, 'Missing themes array'
    assert len(theme['themes']) > 0, 'No theme variants'
    t = theme['themes'][0]
    assert 'name' in t, 'Missing variant name'
    assert 'appearance' in t, 'Missing appearance'
    assert 'style' in t, 'Missing style'
print('  OK: Valid theme structure')
EOF

echo "[3/4] Checking schema..."
python3 << 'EOF' || echo "  WARN: Schema check skipped"
import json
with open('themes/numix.json') as f:
    theme = json.load(f)
    schema = theme.get('$schema', '')
    if 'zed.dev' in schema:
        print('  OK: Has Zed schema')
    else:
        print('  WARN: Missing Zed schema URL')
EOF

echo "[4/4] Checking extension.toml..."
if [ ! -f "extension.toml" ]; then
    echo "  ERROR: extension.toml not found"
    exit 1
fi
echo "  OK: Extension manifest found"

echo ""
echo "Theme validation complete!"
