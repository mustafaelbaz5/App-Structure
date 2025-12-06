# 🚀 Flutter Starter Template

> Professional Flutter template with clean architecture, multi-flavor support, and automated CI/CD.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://claude.ai/chat/LICENSE)

---

## ✨ Features

🏗️ Clean Architecture • 🎨 State Management Ready • 🌍 Localization • 🔒 Secure Storage

🎯 Splash Screen • 🎭 Multi-Flavor (Dev/Prod) • 🔥 Firebase Ready • 🚀 CI/CD Pipeline

---

## 🎯 Quick Start

### 1️⃣ Clone & Setup

```bash
git clone https://github.com/mustafaelbaz5/App-Structure.git my_app
cd my_app
flutter pub get
```

### 2️⃣ Rename Project

```bash
# Install rename tool
dart pub global activate rename

# Update app name, bundle ID, and project name
dart run rename --appname "My App"
dart run rename --bundleId com.company.myapp
dart run rename --projectname my_app
```

**Auto-updates:** AndroidManifest.xml, build.gradle, Info.plist, pubspec.yaml

### 3️⃣ Update Everything

```bash
# Update Flutter & dependencies
flutter upgrade
flutter pub upgrade --major-versions
flutter pub get

# Clean & rebuild
flutter clean
flutter pub get
```

### 4️⃣ Run App

```bash
# Development
flutter run --flavor development -t lib/main_development.dart

# Production
flutter run --flavor production -t lib/main_production.dart
```

---

## 🔄 Update Android Tools

**Via Android Studio (Recommended):**

* Tools → SDK Manager → SDK Tools
* Install: Build-Tools, NDK, CMake (latest versions)

**Via CLI:**

```bash
sdkmanager --update
sdkmanager "build-tools;34.0.0" "ndk;26.1.10909125" "cmake;3.22.1"
```

---

## 🚀 CI/CD Setup (Firebase Distribution)

### Prerequisites

1. **Firebase** : Create project → Add Android app → Download `google-services.json` → Place in `android/app/`
2. **CLI Token** : `npm install -g firebase-tools` → `firebase login:ci` → Copy token
3. **GitHub Secret** : Repo Settings → Secrets → Add `FIREBASE_CLI_TOKEN`

### Configuration

**Edit `android/fastlane/Fastfile`:**

```ruby
firebase_app_distribution(
  app: "1:123456789:android:abc123",  # Your Firebase App ID
  testers: "dev@company.com, qa@company.com",
  release_notes: "v1.0.0 - Initial release"
)
```

**Enable workflow:**

Uncomment `.github/workflows/android_fastlane_firebase_app_distribution_workflow.yml`

### Usage

```bash
git push origin main  # Triggers automatic build & distribution
```

View progress: GitHub repo → Actions tab

**Build time:** 3-5 min (cached) | 8-12 min (first time)

---

## 📦 Common Commands

```bash
# Build
flutter build apk --release --flavor production
flutter build appbundle --release --flavor production

# Clean
flutter clean && flutter pub get

# Test & Analyze
flutter test
flutter analyze
dart format .

# Update deps
flutter pub outdated
flutter pub upgrade --major-versions
```

---

## 🐛 Troubleshooting

| Issue                       | Solution                                                 |
| --------------------------- | -------------------------------------------------------- |
| `dart: command not found` | Add to PATH:`export PATH="$PATH:$HOME/.pub-cache/bin"` |
| Android build fails         | `flutter clean && cd android && ./gradlew clean`       |
| Firebase token error        | Verify `FIREBASE_CLI_TOKEN`in GitHub Secrets           |
| Testers no email            | Check Fastfile emails & Firebase Console testers         |

---

## 📂 Project Structure

```
lib/
├── core/
│   ├── di/              # Dependency injection
│   ├── error/           # Error handling
│   ├── router/          # Navigation
│   ├── storage/         # Secure storage
│   └── themes/          # Themes & styles
├── features/
│   └── feature_ex/
│       ├── data/        # Models, repos, services
│       ├── logic/       # Business logic
│       └── ui/          # Screens & widgets
├── main_development.dart
└── main_production.dart
```

---

## ✅ Setup Checklist

* [ ] Cloned & renamed project
* [ ] Updated Flutter SDK & dependencies
* [ ] Added `google-services.json`
* [ ] Updated Firebase App ID in Fastfile
* [ ] Added `FIREBASE_CLI_TOKEN` to GitHub
* [ ] Uncommented workflow file
* [ ] Pushed to main & verified build

**Ready to code! 🎉**

---

## 📚 Resources

[Flutter Docs](https://flutter.dev/docs) • [Firebase Console](https://console.firebase.google.com/) • [Fastlane](https://docs.fastlane.tools/)

---

**Made with ❤️ by [Mustafa Elbaz](https://github.com/mustafaelbaz5)**
