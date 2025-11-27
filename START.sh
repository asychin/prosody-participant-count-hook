#!/bin/bash
# ProsPyDoor - Quick Start Script

set -e

echo "🚪 ProsPyDoor - Prosody Python Door"
echo "===================================="
echo ""

# Check for .env existence
if [ ! -f ".env" ]; then
    echo "⚠️  .env file not found!"
    echo "📝 Creating from .env.example..."
    cp .env.example .env
    echo "✅ .env file created"
    echo ""
    echo "⚠️  IMPORTANT: Edit .env and change PROSPYDOOR_API_KEY!"
    echo "   nano .env"
    echo ""
    read -p "Press Enter after editing .env..."
fi

echo "🚀 Starting ProsPyDoor..."
docker compose up -d

echo ""
echo "⏳ Waiting for service to start..."
sleep 5

echo ""
echo "✅ ProsPyDoor started!"
echo ""
echo "📊 Status:"
docker compose ps

echo ""
echo "🔗 Endpoints:"
echo "   Health: http://localhost:8890/health"
echo "   API: http://localhost:8890/api/rooms/{room_name}/participants"
echo "   Docs: http://localhost:8890/docs"
echo ""
echo "📝 Commands:"
echo "   Logs:       docker compose logs -f"
echo "   Restart:    docker compose restart"
echo "   Stop:       docker compose down"
echo ""
