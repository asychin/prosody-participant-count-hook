# 🚀 ProsPyDoor - Quick Start

## Start in 3 Steps

### 1️⃣ Setup

```bash
cd prospydoor
cp .env.example .env
nano .env  # Change PROSPYDOOR_API_KEY to your secret key
```

### 2️⃣ Launch

```bash
docker compose up -d
```

### 3️⃣ Verify

```bash
# Health check
curl http://localhost:8890/health

# Check room
curl -H "X-API-Key: your-key-from-env" \
  http://localhost:8890/api/rooms/TestRoom/participants
```

---

## 📊 API Response

```json
{
  "room_name": "TestRoom",
  "exists": false,
  "participant_count": 0,
  "has_participants": false
}
```

---

## 🔧 Commands

```bash
cd prospydoor

# Logs
docker compose logs -f

# Restart
docker compose restart

# Stop
docker compose down

# Rebuild
docker compose up -d --build
```

---

## 📚 Documentation

- [README.md](README.md) - Full documentation
- Swagger UI: http://localhost:8890/docs
