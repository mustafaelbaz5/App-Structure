# 🚀 Flutter Starter Template

> A professional Flutter starter template designed for rapid project setup with clean architecture, multi-flavor support, and production-ready configuration.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://claude.ai/chat/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://claude.ai/chat/CONTRIBUTING.md)

---

## ✨ What's Inside

This template comes pre-configured with everything you need to start building production-ready Flutter apps:

* 🏗️ **Clean Architecture** - Organized folder structure with separation of concerns
* 🎨 **Pre-configured State Management** - Ready for BLoC, Provider, Riverpod, or GetX
* 🌍 **Localization** - Multi-language support with easy-to-use translation system
* 📱 **Responsive Layout** - Adaptive UI that works on all screen sizes
* 🔒 **Secure Storage** - Flutter Secure Storage integration for sensitive data
* 🎯 **Splash Screen** - Professional splash screen setup with `flutter_native_splash`
* 🎭 **Multiple Flavors** - Development, Staging, and Production environments
* 🔥 **Firebase Ready** - Pre-configured Firebase Auth, Firestore, and Storage
* 🚀 **CI/CD Pipeline** - Automated builds and distribution via GitHub Actions
* 📦 **Modern Tooling** - Latest Flutter SDK, Gradle, and Android build tools

---

## 🎯 Getting Started

### Prerequisites

Before you begin, ensure you have:

* Flutter SDK 3.0 or higher ([Install Flutter](https://flutter.dev/docs/get-started/install))
* Android Studio or VS Code with Flutter extensions
* Xcode (for iOS development on macOS)
* Git installed on your machine

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

* Use reverse domain notation (e.g., `com.company.appname`)
* Use lowercase letters only
* No spaces or special characters
* Must be unique in app stores

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

* ✅ `/android/app/src/main/AndroidManifest.xml` - Android app configuration
* ✅ `/android/app/build.gradle.kts` - Android build configuration
* ✅ `/ios/Runner/Info.plist` - iOS app configuration
* ✅ `/pubspec.yaml` - Flutter project configuration
* ✅ Folder names and project references
* ✅ All platform-specific identifiers

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
   * Check ✅ **Android 14.0 (API 34)** or latest
   * Click **Apply** to install
4. In **SDK Tools** tab, check and install:
   * ✅ **Android SDK Build-Tools** (latest version)
   * ✅ **NDK (Side by side)** (latest version)
   * ✅ **CMake** (latest version)
   * ✅ **Android SDK Command-line Tools**
   * ✅ **Android Emulator**
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

* 📱 Project structure and architecture
* 🔥 Firebase setup and configuration
* 🚀 CI/CD pipeline with GitHub Actions
* 📦 Building and releasing your app

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

* 📖 [Flutter Documentation](https://flutter.dev/docs)
* 💬 [Flutter Community](https://flutter.dev/community)
* 🐛 [Report Issues](https://github.com/your-username/flutter_structure/issues)

---

## 🚀 CI/CD Pipeline with GitHub Actions & Firebase

This template includes a **production-ready CI/CD pipeline** that automatically builds and distributes your app to testers whenever you push code to the `main` branch.

### 🎯 What It Does

✅ **Automated Builds** - Builds production APK on every push

✅ **Firebase Distribution** - Sends app to testers automatically

✅ **Email Notifications** - Testers receive download links via email

✅ **Artifact Storage** - Stores APK in GitHub for 90 days

✅ **Smart Caching** - Speeds up builds by caching dependencies

---

## 📋 Prerequisites

### 1. Firebase Project Setup

#### A. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click **"Add project"** or select existing project
3. Follow the setup wizard

#### B. Add Android App to Firebase

1. In Firebase Console, click **"Add app"** → Select **Android**
2. Enter your **package name** (e.g., `com.yourcompany.awesomeapp`)
3. Download `google-services.json`
4. Place it in `android/app/google-services.json`

```bash
# Your project structure should look like:
android/
  app/
    google-services.json  ← Place here
    build.gradle.kts
```

#### C. Enable Firebase App Distribution

1. In Firebase Console, go to **Release & Monitor** → **App Distribution**
2. Click **Get started**
3. Note your **App ID** (looks like `1:123456789:android:abc123def456`)

### 2. Generate Firebase CLI Token

```bash
# Install Firebase CLI (if not already installed)
npm install -g firebase-tools

# Login and generate CI token
firebase login:ci
```

**Copy the generated token** - you'll need it for GitHub Secrets!

Example output:

```
✔  Success! Use this token to login on a CI server:

1//abc123def456ghi789jkl...

Example: firebase deploy --token "$FIREBASE_TOKEN"
```

### 3. Configure GitHub Secrets

1. Go to your GitHub repository
2. Click **Settings** → **Secrets and variables** → **Actions**
3. Click **"New repository secret"**
4. Add the following secret:
   * **Name:** `FIREBASE_CLI_TOKEN`
   * **Value:** Paste the token from step 2

![GitHub Secrets](https://docs.github.com/assets/cb-121134/images/help/settings/actions-secrets-new.png)

---

## 🔧 Configuration

### Step 1: Update Fastlane Configuration

Open `android/fastlane/Fastfile` and customize:

#### A. Update Firebase App ID

```ruby
firebase_app_distribution(
  app: "1:1032756631378:android:10f1b07bb58ce0e44ecc8b",  # ← Replace with YOUR App ID
  # ... rest of config
)
```

**Where to find your App ID:**

* Firebase Console → Project Settings → General → Your apps → App ID

#### B. Update Testers List

```ruby
testers_list = [
  "developer@yourcompany.com",
  "qa@yourcompany.com",
  "beta.tester@yourcompany.com",
  "product.manager@yourcompany.com",
]
```

💡 **Pro Tip:** You can also create **tester groups** in Firebase Console instead of listing individual emails.

#### C. Customize Release Notes

```ruby
release_notes: "v1.0.5 - New Features: Dark mode, Push notifications. Bug fixes: Login issue resolved.",
```

**Or use dynamic release notes:**

```ruby
release_notes: "Build #{ENV['GITHUB_RUN_NUMBER']} - #{ENV['GITHUB_SHA'][0..6]}",
```

### Step 2: Enable GitHub Actions Workflow

The workflow file is located at `.github/workflows/android_fastlane_firebase_app_distribution_workflow.yml`

**Currently commented out** - Uncomment to enable:

```yaml
name: Android Fastlane with Firebase App Distribution Workflow

on:
  push:
    branches:
      - main  # Triggers on push to main branch

jobs:
  distribute_to_firebase:
    runs-on: ubuntu-latest
    # ... rest of workflow
```

### Step 3: Customize Build Flavor (Optional)

By default, builds  **production flavor** . To change:

**In `Fastfile`:**

```ruby
sh "flutter build apk --release --flavor staging --target lib/main_staging.dart"
```

**Update artifact path:**

```ruby
android_artifact_path: "../build/app/outputs/flutter-apk/app-staging-release.apk"
```

---

## 🎬 How to Use

### Trigger Automatic Build

Simply push your code to the `main` branch:

```bash
git add .
git commit -m "feat: added user profile feature"
git push origin main
```

**What happens next:**

1. ⚡ GitHub Actions detects the push
2. 🏗️ Sets up build environment (Flutter, Java, Ruby)
3. 📦 Builds production APK
4. 🚀 Uploads to Firebase App Distribution
5. 📧 Sends email to all testers with download link
6. 💾 Stores APK as GitHub artifact

### View Build Status

1. Go to your GitHub repository
2. Click **"Actions"** tab
3. See real-time build progress

![GitHub Actions](https://docs.github.com/assets/cb-61243/images/help/repository/actions-workflow-status.png)

### Manual Build (Optional)

You can also trigger builds manually:

```bash
# Navigate to android folder
cd android

# Run Fastlane locally
bundle install
bundle exec fastlane android release_to_firebase

# Return to root
cd ..
```

---

## 📊 Workflow Breakdown

### Pipeline Steps Explained

```yaml
1. Checkout Code
   ↓
2. Cache Dependencies (Flutter & Gradle) - Speeds up builds
   ↓
3. Setup Java 17 - Required for Android builds
   ↓
4. Install Flutter SDK - Latest stable version
   ↓
5. Get Dependencies - flutter pub get
   ↓
6. Setup Ruby & Fastlane - Automation tools
   ↓
7. Build & Distribute - Fastlane builds APK and sends to Firebase
   ↓
8. Upload Artifact - Stores APK in GitHub (90 days)
```

### Build Performance

**First Build:** ~8-12 minutes

**Subsequent Builds:** ~3-5 minutes (thanks to caching)

### Caching Strategy

The workflow caches:

* ✅ Flutter pub dependencies (`~/.pub-cache`)
* ✅ Gradle dependencies (`~/.gradle/caches`)
* ✅ Gradle wrapper (`~/.gradle/wrapper`)

This reduces build time by  **50-70%** !

---

## 🔍 Fastlane Commands Reference

### Available Lanes

```bash
# Distribute to Firebase
bundle exec fastlane android release_to_firebase

# Add custom lanes in Fastfile:
lane :beta do
  # Custom beta release logic
end

lane :play_store do
  # Deploy to Google Play
end
```

### Fastlane Actions Used

| Action                        | Purpose                |
| ----------------------------- | ---------------------- |
| `flutter clean`             | Cleans build artifacts |
| `flutter build apk`         | Builds production APK  |
| `firebase_app_distribution` | Uploads to Firebase    |

---

## 🎨 Customization Options

### 1. Build Different Variants

**Build App Bundle instead of APK:**

```ruby
sh "flutter build appbundle --release --flavor production --target lib/main_production.dart"

firebase_app_distribution(
  android_artifact_type: "AAB",
  android_artifact_path: "../build/app/outputs/bundle/productionRelease/app-production-release.aab",
  # ... rest of config
)
```

### 2. Add Multiple Distribution Targets

```ruby
lane :release_to_all do
  release_to_firebase  # Internal testers
  release_to_play_store_beta  # Google Play beta track
  notify_slack  # Send Slack notification
end
```

### 3. Version Bumping

```ruby
lane :release_to_firebase do
  # Auto-increment version
  increment_version_code(
    gradle_file_path: "app/build.gradle.kts"
  )
  
  # Build and distribute
  sh "flutter build apk --release --flavor production"
  firebase_app_distribution(...)
end
```

### 4. Add Tester Groups (Recommended)

Instead of individual emails, use Firebase groups:

**In Firebase Console:**

1. Go to **App Distribution** → **Testers & Groups**
2. Create groups (e.g., "QA Team", "Beta Testers", "Internal")
3. Add testers to groups

**In Fastfile:**

```ruby
firebase_app_distribution(
  groups: "qa-team, beta-testers",  # Group names from Firebase
  # testers: "...",  ← Remove individual emails
)
```

---

## 📧 Email Notification Template

Testers receive an email like this:

```
📱 New Build Available!

App: My Awesome App
Version: 1.0.4
Release Notes: 
ZRC Finish All Most Students Features UI (v.1.0.4)

[Download Now] Button

Distributed via Firebase App Distribution
```

---

## 🐛 Troubleshooting

### Issue: Build fails with "Firebase CLI token not found"

**Solution:**

```bash
# Verify secret is added in GitHub
Settings → Secrets → FIREBASE_CLI_TOKEN should exist

# Regenerate token if needed
firebase login:ci
```

### Issue: "App not found" error

**Solution:**

```ruby
# Verify your Firebase App ID is correct
firebase_app_distribution(
  app: "1:YOUR_PROJECT_ID:android:YOUR_APP_ID",  # Check this!
)
```

**Find correct App ID:**

* Firebase Console → Project Settings → Your apps → Copy App ID

### Issue: Gradle build fails

**Solution:**

```bash
# Clean local builds
cd android
./gradlew clean
cd ..

# Update Gradle wrapper
cd android
./gradlew wrapper --gradle-version=8.4
cd ..
```

### Issue: Testers not receiving emails

**Solution:**

1. Check **Firebase Console** → **App Distribution** → **Testers**
2. Verify email addresses are correct
3. Check spam/junk folders
4. Ensure testers accepted Firebase invitation (first time only)

### Issue: APK size too large

**Solution:**

```ruby
# Enable code shrinking
sh "flutter build apk --release --shrink --split-per-abi"

# This creates separate APKs for each architecture
# arm64-v8a, armeabi-v7a, x86_64
```

---

## 📈 Advanced Configuration

### 1. Run on Multiple Branches

```yaml
on:
  push:
    branches:
      - main
      - develop
      - release/*
```

### 2. Manual Workflow Dispatch

```yaml
on:
  push:
    branches: [main]
  workflow_dispatch:  # Adds "Run workflow" button in GitHub
```

### 3. Add Slack Notifications

**Install Fastlane Slack plugin:**

```bash
fastlane add_plugin slack
```

**In Fastfile:**

```ruby
lane :release_to_firebase do
  # ... build and distribute
  
  slack(
    message: "New build distributed!",
    channel: "#releases",
    slack_url: ENV["SLACK_WEBHOOK_URL"]
  )
end
```

### 4. Parallel Builds (iOS + Android)

```yaml
jobs:
  build_android:
    runs-on: ubuntu-latest
    # ... Android build steps
  
  build_ios:
    runs-on: macos-latest
    # ... iOS build steps
```

---

## 🎯 Best Practices

✅ **Use semantic commit messages:** `feat:`, `fix:`, `chore:`

✅ **Test locally first:** Run `bundle exec fastlane` before pushing

✅ **Keep secrets secure:** Never commit Firebase tokens

✅ **Use tester groups:** Easier to manage than individual emails

✅ **Version your releases:** Update release notes with each build

✅ **Monitor build times:** Optimize if builds take >10 minutes

✅ **Review Firebase quotas:** Free tier has limits on distributions

---

## 📚 Additional Resources

* 📖 [Fastlane Documentation](https://docs.fastlane.tools/)
* 🔥 [Firebase App Distribution Guide](https://firebase.google.com/docs/app-distribution)
* 🤖 [GitHub Actions Documentation](https://docs.github.com/en/actions)
* 🎬 [Flutter CI/CD Tutorial](https://flutter.dev/docs/deployment/cd)

---

## 🎉 Success Checklist

After setup, verify:

* [ ] `google-services.json` added to `android/app/`
* [ ] Firebase App ID updated in `Fastfile`
* [ ] Testers list updated in `Fastfile`
* [ ] `FIREBASE_CLI_TOKEN` added to GitHub Secrets
* [ ] Workflow file uncommented and enabled
* [ ] Successfully pushed to `main` branch
* [ ] Build passed in GitHub Actions
* [ ] Testers received email with download link
* [ ] APK downloadable and installable

**Once all checked, you have a fully automated CI/CD pipeline! 🚀**

---

**Made with ❤️ by the Flutter community**
