# Android APK build

## Local build

```bash
gradle :android:assembleDebug
```

Output:

```txt
android/build/outputs/apk/debug/android-debug.apk
```

## Install on device

```bash
adb install -r android/build/outputs/apk/debug/android-debug.apk
```

## Current MVP note

The Android app is a lightweight test shell. ARCore depth and full collision checking will be added after the core product model and measurement logic is stable.
