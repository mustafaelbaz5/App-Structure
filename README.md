# 🚀 Flutter Starter Template

> A professional Flutter starter template designed for rapid project setup with clean architecture, multi-flavor support, and production-ready configuration.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## ✨ What's Inside

This template comes pre-configured with everything you need to start building production-ready Flutter apps:

- 🏗️ **Clean Architecture** - Organized folder structure with separation of concerns
- 🎨 **Pre-configured State Management** - Ready for BLoC, Provider, Riverpod, or GetX
- 🌍 **Localization** - Multi-language support with easy-to-use translation system
- 📱 **Responsive Layout** - Adaptive UI that works on all screen sizes
- 🔒 **Secure Storage** - Flutter Secure Storage integration for sensitive data
- 🎯 **Splash Screen** - Professional splash screen setup with `flutter_native_splash`
- 🎭 **Multiple Flavors** - Development, Staging, and Production environments
- 🔥 **Firebase Ready** - Pre-configured Firebase Auth, Firestore, and Storage
- 🚀 **CI/CD Pipeline** - Automated builds and distribution via GitHub Actions
- 📦 **Modern Tooling** - Latest Flutter SDK, Gradle, and Android build tools

---

## 🎯 Getting Started

### Prerequisites

Before you begin, ensure you have:

- Flutter SDK 3.0 or higher ([Install Flutter](https://flutter.dev/docs/get-started/install))
- Android Studio or VS Code with Flutter extensions
- Xcode (for iOS development on macOS)
- Git installed on your machine

### 📥 Step 1: Clone the Repository

Clone this template to kickstart your new project:

```bash
# Clone the repository
git clone https://github.com/your-username/flutter_structure.git my_awesome_app

# Navigate to the project directory
cd my_awesome_app

# Remove the original git history (optional)
rm -rf .git

# Initialize your own git repository
git init
git add .
git commit -m "Initial commit from Flutter starter template"
```

💡 **Pro Tip:** Replace `my_awesome_app` with your actual project name!

---

## 🏷️ Step 2: Rename Your Project

Use the powerful `rename` package to automatically update your app name, bundle ID, and project name across all configuration files.

### Install the Rename Tool

```bash
dart pub global activate rename
```

### Change App Display Name

Update the name that appears under your app icon:

```bash
dart run rename --appname "My Awesome App"
```

**Example:**
```bash
dart run rename --appname "TaskMaster Pro"
```

### Change Bundle ID / Package Name

Update your app's unique identifier:

```bash
dart run rename --bundleId com.yourcompany.awesomeapp
```

**Example:**
```bash
dart run rename --bundleId com.acme.taskmasterpro
```

💡 **Bundle ID Guidelines:**
- Use reverse domain notation (e.g., `com.company.appname`)
- Use lowercase letters only
- No spaces or special characters
- Must be unique in app stores

### Change Project Folder Name

Update the project's internal folder name:

```bash
dart run rename --projectname awesome_app
```

**Example:**
```bash
dart run rename --projectname taskmaster_pro
```

### 🎯 What Gets Updated Automatically?

The `rename` command intelligently updates:

- ✅ `/android/app/src/main/AndroidManifest.xml` - Android app configuration
- ✅ `/android/app/build.gradle.kts` - Android build configuration
- ✅ `/ios/Runner/Info.plist` - iOS app configuration
- ✅ `/pubspec.yaml` - Flutter project configuration
- ✅ Folder names and project references
- ✅ All platform-specific identifiers

**Everything is updated automatically - no manual editing required!** 🎉

---

## 🔄 Step 3: Update to Latest Versions

Keep your project on the cutting edge with the latest Flutter SDK and dependencies.

### A. Update Flutter SDK

```bash
# Upgrade Flutter to the latest stable version
flutter upgrade

# Verify your Flutter installation
flutter doctor -v
```

**Expected Output:**
```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x, on macOS 14.0, locale en-US)
[✓] Android toolchain - develop for Android devices
[✓] Xcode - develop for iOS and macOS
[✓] Chrome - develop for the web
[✓] Android Studio (version 2024.x)
[✓] VS Code (version 1.x.x)
[✓] Connected device (1 available)
```

### B. Update All Flutter Dependencies

Automatically update all packages in `pubspec.yaml` to their latest compatible versions:

```bash
# Check which packages have updates available
flutter pub outdated

# Update all dependencies to latest compatible versions
flutter pub upgrade --major-versions

# Get all dependencies
flutter pub get
```

### C. Update Android SDK, NDK & Build Tools

This template uses the latest Android build tools. Here's how to ensure everything is up to date:

#### Option 1: Via Android Studio (Recommended)

1. Open **Android Studio**
2. Go to **Tools** → **SDK Manager**
3. In **SDK Platforms** tab:
   - Check ✅ **Android 14.0 (API 34)** or latest
   - Click **Apply** to install
4. In **SDK Tools** tab, check and install:
   - ✅ **Android SDK Build-Tools** (latest version)
   - ✅ **NDK (Side by side)** (latest version)
   - ✅ **CMake** (latest version)
   - ✅ **Android SDK Command-line Tools**
   - ✅ **Android Emulator**
5. Click **OK** to apply changes

#### Option 2: Via Command Line

```bash
# Update Android SDK tools
sdkmanager --update

# Install latest build tools
sdkmanager "build-tools;34.0.0"

# Install latest NDK
sdkmanager "ndk;26.1.10909125"

# Install latest CMake
sdkmanager "cmake;3.22.1"

# List installed packages
sdkmanager --list_installed
```

### D. Update Gradle & Kotlin

The project uses Gradle 8.x and Kotlin 1.9.x. These are configured in:

**`android/gradle/wrapper/gradle-wrapper.properties`:**
```properties
distributionUrl=https\://services.gradle.org/distributions/gradle-8.4-all.zip
```

**`android/build.gradle.kts`:**
```kotlin
plugins {
    id("com.android.application") version "8.3.0" apply false
    id("org.jetbrains.kotlin.android") version "1.9.22" apply false
}
```

To update these:

```bash
# Navigate to android folder
cd android

# Update Gradle wrapper to latest version
./gradlew wrapper --gradle-version=8.4 --distribution-type=all

# Return to project root
cd ..
```

### E. Update iOS Dependencies (macOS only)

```bash
# Navigate to iOS folder
cd ios

# Update CocoaPods
pod repo update

# Install/update pods
pod install

# Return to project root
cd ..
```

---

## 🧹 Step 4: Clean & Rebuild

After making all updates, clean your project to avoid conflicts:

```bash
# Clean Flutter build cache
flutter clean

# Get fresh dependencies
flutter pub get

# Clean Android build (optional but recommended)
cd android && ./gradlew clean && cd ..

# Clean iOS build (macOS only)
cd ios && rm -rf Pods Podfile.lock && pod install && cd ..
```

---

## ▶️ Step 5: Run Your App

You're all set! Run your app with your preferred flavor:

### Development Flavor
```bash
flutter run --flavor development --target lib/main_development.dart
```

### Production Flavor
```bash
flutter run --flavor production --target lib/main_production.dart
```

### Quick Run (Default)
```bash
flutter run
```

---

## 🎓 Quick Reference Guide

### Common Commands

```bash
# Check for updates
flutter pub outdated

# Update dependencies
flutter pub upgrade --major-versions

# Clean project
flutter clean && flutter pub get

# Build APK (production)
flutter build apk --release --flavor production

# Build App Bundle
flutter build appbundle --release --flavor production

# Build iOS
flutter build ios --release --flavor production

# Analyze code
flutter analyze

# Format code
dart format .

# Run tests
flutter test
```

### Verify Your Setup

After completing all steps, verify everything works:

```bash
# Check Flutter environment
flutter doctor -v

# Check Android licenses (if needed)
flutter doctor --android-licenses

# Run in verbose mode to see detailed output
flutter run -v
```

---

## 🎯 What's Next?

✅ Project cloned and renamed  
✅ Dependencies updated to latest versions  
✅ Android SDK/NDK/CMake updated  
✅ Project cleaned and rebuilt  

**You're ready to start building! 🚀**

Continue to the next sections to learn about:
- 📱 Project structure and architecture
- 🔥 Firebase setup and configuration
- 🚀 CI/CD pipeline with GitHub Actions
- 📦 Building and releasing your app

---

## ❓ Troubleshooting

### Issue: `dart: command not found` when running rename

**Solution:**
```bash
# Add Dart to your PATH (add to ~/.bashrc or ~/.zshrc)
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Then reload your shell
source ~/.bashrc  # or source ~/.zshrc
```

### Issue: Android build fails after updates

**Solution:**
```bash
# Clean everything
flutter clean
cd android && ./gradlew clean && cd ..

# Invalidate caches in Android Studio
# File → Invalidate Caches → Invalidate and Restart

# Rebuild
flutter pub get
flutter build apk
```

### Issue: CocoaPods version conflicts (iOS)

**Solution:**
```bash
cd ios
rm -rf Pods Podfile.lock
pod repo update
pod install
cd ..
```

---

## 📞 Need Help?

- 📖 [Flutter Documentation](https://flutter.dev/docs)
- 💬 [Flutter Community](https://flutter.dev/community)
- 🐛 [Report Issues](https://github.com/your-username/flutter_structure/issues)

---

## 🚀 CI/CD Automation with Firebase

Automatic builds and distribution to testers when you push to `main` branch.

### 🎯 What It Does

✅ Builds production APK automatically  
✅ Distributes to Firebase App Distribution  
✅ Emails testers with download links  
✅ Stores APK in GitHub (90 days)

---

## ⚡ Quick Setup

### 1. Firebase Setup

**A. Create Firebase project and add Android app:**
1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Add Android app with your package name
3. Download `google-services.json` → Place in `android/app/`

**B. Get Firebase App ID:**
- Firebase Console → Project Settings → Your apps → App ID
- Example: `1:123456789:android:abc123def456`

**C. Generate CLI Token:**
```bash
npm install -g firebase-tools
firebase login:ci
```
Copy the token that appears.

### 2. GitHub Setup

1. Go to repo **Settings** → **Secrets** → **Actions**
2. Add secret: `FIREBASE_CLI_TOKEN` = (paste your token)

### 3. Configure Fastlane

Edit `android/fastlane/Fastfile`:

```ruby
firebase_app_distribution(
  app: "YOUR_FIREBASE_APP_ID",  # ← Update this
  testers: "your@email.com, tester@email.com",  # ← Update testers
  release_notes: "Version 1.0.0 - Initial release"  # ← Update notes
)
```

### 4. Enable Workflow

Uncomment `.github/workflows/android_fastlane_firebase_app_distribution_workflow.yml`

---

## 🎬 Usage

**Push to trigger build:**
```bash
git push origin main
```

**View progress:**
- Go to GitHub repo → **Actions** tab
- Watch build in real-time

**Build time:** ~3-5 minutes (cached), ~8-12 minutes (first time)

---

## 🔧 Common Issues

**❌ "Firebase CLI token not found"**
```bash
# Verify secret exists in GitHub Settings → Secrets
# Or regenerate token: firebase login:ci
```

**❌ "App not found"**
```ruby
# Check App ID in Fastfile matches Firebase Console
app: "1:YOUR_PROJECT_ID:android:YOUR_APP_ID"
```

**❌ Testers not receiving emails**
- Check email addresses in `Fastfile`
- Check spam/junk folders
- Verify Firebase App Distribution is enabled

---

## 📦 Customization

**Use tester groups (recommended):**
```ruby
firebase_app_distribution(
  groups: "qa-team, beta-testers"  # Create groups in Firebase Console
)
```

**Build different flavor:**
```ruby
sh "flutter build apk --release --flavor staging"
```

**Manual build:**
```bash
cd android
bundle install
bundle exec fastlane android release_to_firebase
```

---

## ✅ Success Checklist

- [ ] `google-services.json` in `android/app/`
- [ ] Firebase App ID updated in `Fastfile`
- [ ] Testers list updated
- [ ] `FIREBASE_CLI_TOKEN` in GitHub Secrets
- [ ] Workflow uncommented
- [ ] Pushed to `main` and build succeeded
- [ ] Testers received email

**Done! Your CI/CD pipeline is ready! 🎉**

---

**Made with ❤️ by the Flutter community**