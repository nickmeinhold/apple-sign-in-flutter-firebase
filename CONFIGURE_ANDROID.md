### Configure Project Settings

Follow [firebase_auth > Android Integration](https://pub.dev/packages/firebase_auth#android-integration)

Enable the Google services by configuring the Gradle scripts as such.

1. Add the classpath to the [project]/android/build.gradle file.

```sh
dependencies {
  // Example existing classpath
  classpath 'com.android.tools.build:gradle:3.2.1'
  // Add the google services classpath
  classpath 'com.google.gms:google-services:4.3.0'
}
```

2. Add the apply plugin to the [project]/android/app/build.gradle file.

```sh
// ADD THIS AT THE BOTTOM
apply plugin: 'com.google.gms.google-services'
```

### Configure Activity for Apple Sign In 

Follow [sign_in_with_apple > android](https://github.com/aboutyou/dart_packages/tree/master/packages/sign_in_with_apple#android)

In `AndroidManifest.xml`, inside `<application>` add:

```xml
<!-- Set up the Sign in with Apple activity, such that it's callable from the browser-redirect -->
<activity
    android:name="com.aboutyou.dart_packages.sign_in_with_apple.SignInWithAppleCallback"
    android:exported="true"
>
    <intent-filter>
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />

        <data android:scheme="signinwithapple" />
        <data android:path="callback" />
    </intent-filter>
</activity>
```