# apple_sign_in_flutter_firebase

Demonstrates using the [sign_in_with_apple](https://github.com/aboutyou/dart_packages/tree/master/packages/sign_in_with_apple) and [firebase_auth]() plugins.

#### Setting up the Flutter project 
- [FLUTTER_SETUP.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FLUTTER_SETUP.md)
  - record the ios `bundle id` and android `package name` 

#### Setting up the Firebase project
- [FIREBASE_SETUP.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_SETUP.md)

#### Adding the Firebase apps 
- [FIREBASE_IOS_APP.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_IOS_APP.md)
- [FIREBASE_ANDROID_APP.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_ANDROID_APP.md)

#### Enabling Apple Sign In 
- [FIREBASE_ENABLE_APPLE_SIGN_IN.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/FIREBASE_ENABLE_APPLE_SIGN_IN.md)
  - record the `callback URL` 

#### Setting up the Apple App Id and Service Id  
- [APPLE_APP_ID.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/APPLE_APP_ID.md)
- [APPLE_SERVICE_ID.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/APPLE_SERVICE_ID.md)
  - record the the `Service Id` identifier 

#### Configuring the iOS and Android apps 
- [CONFIGURE_IOS.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/CONFIGURE_IOS.md)
- [CONFIGURE_ANDROID.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/CONFIGURE_ANDROID.md)

#### Setup a Server 
- [SETUP_SERVER.md](https://github.com/nickmeinhold/apple-sign-in-flutter-firebase/blob/master/SETUP_SERVER.md)

## Order of steps 

#### Flutter: app creation 
- specifies the ios `bundle id` and android `package name` 

#### Firebase: project creation 
- doesn't depend on anything

#### Firebase: iOS App creation 
- needs the `bundle id` from [Flutter: app creation] 

#### Firebase: Android App creation 
- needs the `package name` from [Flutter: app creation] 

#### Firebase: Enable Apple Sign In 
- needs the `Service Id` from [Apple: Service Id creation] (but do this now and come back as there is a circular dependency)

#### Apple: App Id creation
- needs the `bundle id` from [Flutter: app creation] 

#### Apple: Auth Key creation 
- needs the `App Id` from [Apple: App Id creation] 

#### Server: Setup 
- needs the `Auth Key` from [Apple: Auth Key creation] 

#### Apple: Service Id creation 
- needs the `App Id` from [Apple: App Id creation] 
- needs the `Redirect URI` from [Server: Setup] 

#### Configure: iOS and Android apps
- no dependencies 