# apple_sign_in_flutter_firebase

Demonstrates using [sign_in_with_apple](https://github.com/aboutyou/dart_packages/tree/master/packages/sign_in_with_apple) and [firebase_auth]() plugins.

The steps below are starting from scratch but you should be able to use just the steps you need if you have an existing project.

The order doesn't matter too much as you can usually come back and edit things but following the order below will probably reduce how many times you circle back.

1. [Create a Flutter project](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FLUTTER_SETUP.md)
   - record the ios `bundle id` and android `package name` 

2. [Create a Firebase project](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_SETUP.md)
   - [Create iOS App](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_IOS_APP.md)
     - needs `bundle id` from step 1
   - [Create Android App](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_ANDROID_APP.md)
     - needs `package name` from step 1
   - [Enable Apple Sign In](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_ENABLE_APPLE_SIGN_IN.md)
     - needs `Service Id` from later step (but do this now and come back later as there is a circular dependency)

3. [Create Apple App Id](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/APPLE_APP_ID.md)
   - needs the `bundle id`

4. [Create Apple Auth Key](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/APPLE_AUTH_KEY.md) (for Android/Web)
   - needs the `App Id`

5. [Setup a Server](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/SETUP_SERVER.md) (for Android/Web)
   - needs the `Auth Key` 
   - record the `Redirect URI`

6. [Create Apple Service Id](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/APPLE_SERVICE_ID.md) (for Android/Web)
   - needs the `App Id`
   - needs the `Redirect URI`
   - record the the `Service Id` identifier 

9. [Configure iOS &/| Mac Apps](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/CONFIGURE_IOS.md)

10. [Configure Android App](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/CONFIGURE_ANDROID.md)

11. [Configure Flutter App](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/CONFIGURE_FLUTTER.md)
