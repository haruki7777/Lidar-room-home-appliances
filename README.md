# Lidar Room Home Appliances

LiDAR/AR 기반으로 집 공간을 스캔하고, 냉장고/김치냉장고/세탁기 같은 가전을 실제 크기로 배치해 문 열림 간섭과 여유공간을 검사하는 MVP 프로젝트입니다.

## 목표

- iPhone LiDAR + RoomPlan 공간 스캔
- RealityKit 기반 실제 크기 가전 3D 박스 배치
- 냉장고/세탁기 문 열림 시뮬레이션
- 충돌/여유공간 검사 로직 분리
- Android 테스트 APK 골격
- FastAPI 제품 DB API 골격
- GitHub Actions 빌드 파이프라인 초안

## 저장소 구조

```txt
.
├─ ios/                 # SwiftUI + RealityKit + RoomPlan MVP
├─ android/             # Kotlin Android 테스트 앱 MVP
├─ backend/             # FastAPI 제품 DB API MVP
├─ docs/                # 설치, iOS 신뢰 설정, 배포 문서
└─ .github/workflows/   # Android/iOS 빌드 자동화
```

## 중요한 현실 제한

### iOS IPA

서명된 IPA를 실제 iPhone에 설치하려면 Apple Developer Program, 인증서, provisioning profile, signing 설정이 필요합니다.

이 저장소에는 다음이 포함됩니다.

- iOS 앱 소스 코드
- XcodeGen 기반 프로젝트 생성 설정
- simulator 빌드 workflow
- signed IPA용 workflow 템플릿

단, Apple 인증서/프로비저닝 없이 실제 기기 설치용 signed IPA를 생성할 수는 없습니다.

### iPhone의 `VPN 및 기기 관리 > 신뢰함`

앱이 이 설정을 자동으로 누르거나 우회하는 것은 iOS 보안 정책상 불가능합니다. 사용자가 직접 설정해야 합니다.

### Android APK

Android는 디버그 APK부터 테스트할 수 있습니다. GitHub Actions에서 APK artifact를 만들도록 구성합니다.

## 빠른 시작

### iOS

```bash
cd ios
brew install xcodegen
xcodegen generate
open LidarHomeAppliances.xcodeproj
```

### Android

```bash
gradle :android:assembleDebug
```

### Backend

```bash
cd backend
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```

## MVP 판정 원칙

이 앱의 결과는 AR 스캔 기반 참고용입니다. 실제 구매/설치 전에는 제조사 공식 치수와 설치 기사 확인이 필요합니다.
