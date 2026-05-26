# iOS build and trust guide

## Local build

```bash
cd ios
brew install xcodegen
xcodegen generate
open LidarHomeAppliances.xcodeproj
```

In Xcode:

1. Select the app target.
2. Set Team to your Apple Developer account.
3. Connect your iPhone.
4. Build and run.

## IPA reality check

A real device IPA needs code signing.

Required:

- Apple Developer Program membership
- Distribution certificate
- Provisioning profile
- Bundle identifier
- Xcode signing setup

Without these, only simulator builds or limited local development builds are possible.

## iPhone trust setting

If iOS shows an untrusted developer message, open:

```txt
Settings > General > VPN & Device Management
```

Then choose the developer profile and tap Trust.

This cannot be automated by the app. It is a user-controlled iOS security setting.
