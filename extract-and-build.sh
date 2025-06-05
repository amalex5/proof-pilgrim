#!/bin/bash
INPUT="$1"
OUTPUT="$2"
DEFAULT_TEMPLATE="template.html"  # Change this to your preferred default

# Extract template metadata, fallback to default if not found
TEMPLATE=$(pandoc "$INPUT" --template='$if(template)$$template$$else$'$DEFAULT_TEMPLATE'$endif$' --to=plain 2>/dev/null)

# Handle the case where pandoc fails entirely (malformed file, etc.)
if [ $? -ne 0 ] || [ -z "$TEMPLATE" ]; then
    TEMPLATE="$DEFAULT_TEMPLATE"
fi

# Add .html extension if not already present
if [[ "$TEMPLATE" != *.html ]]; then
    TEMPLATE="${TEMPLATE}.html"
fi

# Verify template file exists, fallback to default if not
if [ ! -f "$TEMPLATE" ]; then
    echo "Warning: Template $TEMPLATE not found, using ${DEFAULT_TEMPLATE}.html" >&2
    TEMPLATE="${DEFAULT_TEMPLATE}.html"
fi

# Build the final output
pandoc "$INPUT" -o "$OUTPUT" -s --mathjax --css /complex-numbers.css --template "$TEMPLATE" --toc