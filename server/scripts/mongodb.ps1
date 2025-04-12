$mongoDbPath = "C:\Program Files\MongoDB\Server\6.0\bin"
$dataPath = "C:\data\db"

# Ensure data directory exists
if (-not (Test-Path $dataPath)) {
    New-Item -ItemType Directory -Path $dataPath
}

# Start MongoDB
Start-Process "mongod" -ArgumentList "--dbpath $dataPath" -NoNewWindow
