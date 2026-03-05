from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)


@app.get("/api/health")
def health():
    return jsonify(status="ok", service="backup-api")


@app.post("/api/backup-now")
def backup_now():
    return jsonify(message="backup job accepted", timestamp=datetime.utcnow().isoformat())


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=6000)
