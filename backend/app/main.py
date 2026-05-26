from fastapi import FastAPI, Query
from pydantic import BaseModel

app = FastAPI(title="FitAR Appliance API", version="0.1.0")

class Appliance(BaseModel):
    id: str
    brand: str
    model_name: str
    category: str
    width_mm: float
    depth_mm: float
    height_mm: float
    door_type: str
    door_open_angle_deg: float
    source: str
    confidence: float

SAMPLE_APPLIANCES = [
    Appliance(
        id="basic-fridge-900",
        brand="Sample",
        model_name="Basic Refrigerator 900",
        category="refrigerator",
        width_mm=900,
        depth_mm=730,
        height_mm=1800,
        door_type="double_swing",
        door_open_angle_deg=110,
        source="manual",
        confidence=0.9,
    ),
    Appliance(
        id="basic-washer-600",
        brand="Sample",
        model_name="Basic Front Washer 600",
        category="washer",
        width_mm=600,
        depth_mm=650,
        height_mm=850,
        door_type="front_circle",
        door_open_angle_deg=120,
        source="manual",
        confidence=0.9,
    ),
]

@app.get("/health")
def health():
    return {"ok": True}

@app.get("/appliances/search", response_model=list[Appliance])
def search_appliances(q: str = Query(default="")):
    keyword = q.lower().strip()
    if not keyword:
        return SAMPLE_APPLIANCES
    return [
        item for item in SAMPLE_APPLIANCES
        if keyword in item.model_name.lower()
        or keyword in item.brand.lower()
        or keyword in item.category.lower()
    ]
