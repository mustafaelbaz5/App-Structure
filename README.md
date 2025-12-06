# 🚀 Flutter Starter Template

> A professional, production-ready Flutter template featuring clean architecture, multi-environment support, and automated CI/CD workflows.

[![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B?logo=flutter)](https://flutter.dev/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

---

## ✨ Key Features

- **🏗️ Clean Architecture** - Scalable, maintainable code structure with separation of concerns
- **🎨 State Management Ready** - Pre-configured for your preferred state management solution
- **🌍 Localization Support** - Multi-language ready with Flutter's intl package
- **🔒 Secure Storage** - Built-in encrypted local data storage
- **🎯 Custom Splash Screen** - Professional app launch experience
- **🎭 Multi-Flavor Support** - Separate development and production environments
- **🔥 Firebase Integration** - Pre-configured Firebase setup for analytics and distribution
- **🚀 Automated CI/CD** - GitHub Actions workflow with Firebase App Distribution

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** 3.0 or higher ([Installation Guide](https://flutter.dev/docs/get-started/install))
- **Dart SDK** (comes with Flutter)
- **Android Studio** or **VS Code** with Flutter extensions
- **Git** for version control
- **Firebase CLI** (for CI/CD setup): `npm install -g firebase-tools`

---

## 🚀 Getting Started

### Step 1: Clone the Repository

```bash
git clone https://github.com/mustafaelbaz5/App-Structure.git my_app
cd my_app
flutter pub get
```

### Step 2: Link to Your Own Repository

#### Start Fresh (Recommended for Clean History)

If you want to start with a clean commit history and push only your current files as the first commit:

```bash
# Step 1: Remove the existing Git history
rm -rf .git
  # Or In cmd
rmdir /s /q .git

# Step 2: Initialize a new Git repository
git init

# Step 3: Add all files to staging
git add .

# Step 4: Create your first commit
git commit -m "Initial commit: Flutter starter template"

# Step 5: Rename branch to main (if needed)
git branch -M main

# Step 6: Add your new repository as remote
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Step 7: Push to your new repository
git push -u origin main
```

** Start New **
- Clean, professional commit history starting from your project
- No references to the original template repository
- Your repository shows your work from the beginning
- Smaller repository size without unnecessary history

**Note:** Make sure you've created an empty repository on GitHub before pushing. Do not initialize it with a README, .gitignore, or license file.

### Step 3: Rename Your Project

Use the Flutter rename package to update your app's identity:

```bash
# Install the rename tool globally
dart pub global activate rename

# Update your app name (displays under app icon)
dart run rename setAppName --value "Your App Name"

# Update your bundle identifier
dart run rename setBundleId --value com.yourcompany.yourapp
```

This command automatically updates:
- `AndroidManifest.xml`
- `build.gradle`
- `Info.plist` (iOS)
- `pubspec.yaml`

### Step 4: Update Dependencies

```bash
# Update Flutter SDK to the latest stable version
flutter upgrade

# Update all project dependencies to latest compatible versions
flutter pub upgrade --major-versions

# Fetch all dependencies
flutter pub get

# Clean build artifacts and rebuild
flutter clean
flutter pub get
```

### Step 5: Run the Application

**Development Environment:**
```bash
flutter run --flavor development -t lib/main_development.dart
```

**Production Environment:**
```bash
flutter run --flavor production -t lib/main_production.dart
```

---

## 🔧 Android SDK Configuration

### Option 1: Using Android Studio (Recommended)

1. Open Android Studio
2. Navigate to **Tools → SDK Manager → SDK Tools**
3. Install the following components:
   - Android SDK Build-Tools (latest version)
   - NDK (Side by side)
   - CMake

### Option 2: Using Command Line

```bash
# Update SDK Manager
sdkmanager --update

# Install required tools
sdkmanager "build-tools;34.0.0"
sdkmanager "ndk;26.1.10909125"
sdkmanager "cmake;3.22.1"
```

---

## 🔥 Firebase & CI/CD Setup

### Prerequisites

1. **Firebase Project**
   - Create a new project at [Firebase Console](https://console.firebase.google.com/)
   - Add an Android app to your project
   - Download `google-services.json`
   - Place it in `android/app/` directory

2. **Firebase CLI Token**
   ```bash
   # Install Firebase Tools
   npm install -g firebase-tools
   
   # Login and generate token
   firebase login:ci
   
   # Copy the generated token
   ```

3. **GitHub Secret**
   - Go to your repository on GitHub
   - Navigate to **Settings → Secrets and variables → Actions**
   - Click **New repository secret**
   - Name: `FIREBASE_CLI_TOKEN`
   - Value: Paste your Firebase CLI token

### Configure Firebase App Distribution

Edit `android/fastlane/Fastfile` and update the following:

```ruby
firebase_app_distribution(
  app: "1:123456789:android:abc123def456",  # Your Firebase App ID
  testers: "dev@company.com, qa@company.com, tester@company.com",
  release_notes: "Version 1.0.0 - Initial release with new features",
  groups: "internal-testers"  # Optional: use tester groups
)
```

**Finding Your Firebase App ID:**
1. Go to Firebase Console
2. Select your project
3. Click the gear icon → Project settings
4. Scroll to "Your apps" section
5. Copy the App ID (format: `1:123456789:android:abc123`)

### Enable GitHub Actions Workflow

Uncomment the workflow file:
```bash
# The file is located at:
.github/workflows/android_fastlane_firebase_app_distribution_workflow.yml
```

### Trigger Automated Builds

Every push to the `main` branch will automatically:
1. Build the Android APK
2. Run tests and code analysis
3. Distribute to Firebase testers

```bash
git add .
git commit -m "Your commit message"
git push origin main
```

**Monitor Progress:**
- Go to your GitHub repository
- Click on the **Actions** tab
- View real-time build logs and status

**Build Times:**
- First build: 8-12 minutes
- Subsequent builds (with cache): 3-5 minutes

---

## 📦 Build Commands

### Android Builds

```bash
# Development APK
flutter build apk --flavor development -t lib/main_development.dart

# Production APK
flutter build apk --release --flavor production -t lib/main_production.dart

# Production App Bundle (for Play Store)
flutter build appbundle --release --flavor production -t lib/main_production.dart
```

### iOS Builds

```bash
# Development
flutter build ios --flavor development -t lib/main_development.dart

# Production
flutter build ios --release --flavor production -t lib/main_production.dart
```

---

## 🛠️ Development Commands

### Code Quality

```bash
# Run all tests
flutter test

# Analyze code for issues
flutter analyze

# Format all Dart files
dart format .

# Fix common issues automatically
dart fix --apply
```

### Dependency Management

```bash
# Check for outdated packages
flutter pub outdated

# Update to latest compatible versions
flutter pub upgrade

# Update to latest major versions (breaking changes)
flutter pub upgrade --major-versions

# Clean and reinstall dependencies
flutter clean
flutter pub get
```

### Clean Build

```bash
# Flutter clean
flutter clean

# Android Gradle clean
cd android && ./gradlew clean && cd ..

# Complete clean and rebuild
flutter clean && flutter pub get && flutter run
```

---

## 📂 Project Structure

```
lib/
├── core/
│   ├── di/                    # Dependency Injection setup
│   ├── error/                 # Error handling & exceptions
│   ├── router/                # Navigation configuration
│   ├── storage/               # Secure local storage
│   ├── themes/                # App themes & styling
│   └── utils/                 # Utility functions & constants
│
├── features/
│   └── feature_example/
│       ├── data/
│       │   ├── models/        # Data models & entities
│       │   ├── repositories/  # Repository implementations
│       │   └── services/      # API & external services
│       │
│       ├── logic/
│       │   ├── bloc/          # Business logic (BLoC/Cubit)
│       │   └── use_cases/     # Use case implementations
│       │
│       └── ui/
│           ├── screens/       # Screen widgets
│           └── widgets/       # Reusable UI components
│
├── l10n/                      # Localization files
├── main_development.dart      # Development entry point
└── main_production.dart       # Production entry point
```

---

## 🐛 Troubleshooting

### Common Issues and Solutions

| Issue | Solution |
|-------|----------|
| `dart: command not found` | Add Dart to PATH: `export PATH="$PATH:$HOME/.pub-cache/bin"` (Add to `~/.zshrc` or `~/.bashrc`) |
| Android build fails | Run `flutter clean && cd android && ./gradlew clean && cd ..` |
| Gradle sync issues | Update Gradle in `android/gradle/wrapper/gradle-wrapper.properties` |
| Firebase token error | Verify `FIREBASE_CLI_TOKEN` is correctly set in GitHub Secrets |
| Testers not receiving builds | Check email addresses in Fastfile and verify testers in Firebase Console |
| Flavor not found | Ensure flavor configurations exist in `android/app/build.gradle` |
| iOS build fails | Run `cd ios && pod install && cd ..` |

### Getting Help

If you encounter issues not listed here:
1. Check the [Flutter documentation](https://flutter.dev/docs)
2. Search [Stack Overflow](https://stackoverflow.com/questions/tagged/flutter)
3. Open an issue in this repository

---

## ✅ Setup Checklist

Use this checklist to ensure you've completed all setup steps:

- [ ] Cloned repository and installed dependencies
- [ ] Renamed project (app name and bundle ID)
- [ ] Removed old Git remote and linked to new repository
- [ ] Updated Flutter SDK and all dependencies
- [ ] Created Firebase project
- [ ] Downloaded and placed `google-services.json` in `android/app/`
- [ ] Updated Firebase App ID in `android/fastlane/Fastfile`
- [ ] Generated Firebase CLI token
- [ ] Added `FIREBASE_CLI_TOKEN` to GitHub Secrets
- [ ] Uncommented GitHub Actions workflow file
- [ ] Updated tester emails in Fastfile
- [ ] Pushed code to main branch
- [ ] Verified successful build in GitHub Actions
- [ ] Confirmed Firebase distribution to testers

**🎉 You're ready to start building!**

---

## 📚 Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Firebase Console](https://console.firebase.google.com/)
- [Fastlane Documentation](https://docs.fastlane.tools/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Clean Architecture Guide](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Mustafa Elbaz**

- GitHub: [@mustafaelbaz5](https://github.com/mustafaelbaz5)

---

## ⭐ Show Your Support

If this template helped you, please give it a ⭐️ on GitHub!

---

Made with ❤️ by Mustafa Elbaz
