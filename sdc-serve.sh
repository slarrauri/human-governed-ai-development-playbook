#!/bin/bash

echo "📦 Setting up Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "📚 Installing dependencies from requirements.txt..."
pip install -r requirements.txt

echo "🌐 Which version do you want to serve?"
echo "1. English"
echo "2. Spanish"
echo "3. Both (2 tabs)"
read -p "Enter choice [1-3]: " choice

case $choice in
  1)
    mkdocs serve -f mkdocs-en.yml
    ;;
  2)
    mkdocs serve -f mkdocs-es.yml
    ;;
  3)
    echo "🌍 Serving both — open 2 tabs manually:"
    echo " - English: http://127.0.0.1:8000/en/"
    echo " - Spanish: http://127.0.0.1:8000/es/"
    mkdocs serve -f mkdocs-en.yml &
    mkdocs serve -f mkdocs-es.yml
    # mkdocs serve -f mkdocs-es.yml -a 127.0.0.1:8001
    ;;
  *)
    echo "❌ Invalid option"
    ;;
esac
