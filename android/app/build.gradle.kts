plugins {
    id 'com.android.application'
    id 'kotlin-android'
    // Flutter Gradle Plugin must come after Android and Kotlin plugins
    id 'dev.flutter.flutter-gradle-plugin'
}

android {
    namespace = "com.example.flutter_structure"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    defaultConfig {
        applicationId = "com.example.flutter_structure"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            // Signing config (debug for now, replace with release config later)
            signingConfig = signingConfigs.getByName("debug")
        }
        debug {
            // Optional: debug-specific settings
        }
    }

    flavorDimensions += "default"
    productFlavors {
        development {
            dimension = "default"
            resValue "string", "app_name", "K Development"
            applicationIdSuffix = ".development"
        }
        production {
            dimension = "default"
            resValue "string", "app_name", "K Production"
            applicationIdSuffix = ".production"
        }
    }
}

flutter {
    source = "../.."
}
