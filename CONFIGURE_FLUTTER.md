Use SignInWithApple to get an AppleIdCredential:

```Dart
final appleIdCredential = SignInWithApple.getAppleIDCredential(
    scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
    ]);
```

For Android/Web config, also use the (previously created) Service Id and Redirect Uri, with `webAuthenticationOptions`: 

```Dart
final appleIdCredential = SignInWithApple.getAppleIDCredential(
    scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
    ],
    webAuthenticationOptions: WebAuthenticationOptions(
        clientId: '[APPLE_SERVICE_ID]',
            redirectUri: Uri.parse(
            '[SERVER_REDIRECT_URL]',
        ),
    ),
);
```

Use the AppleIdCredential to sign in with Firebase.

```Dart 
// Convert to OAuthCredential.
final oAuthCredential = OAuthProvider('apple.com').credential(
    idToken: appleIdCredential.identityToken,
    accessToken: appleIdCredential.authorizationCode,
);

// Use the OAuthCredential to sign in to Firebase.
final userCredential = await FirebaseAuth.instance.signInWithCredential(oAuthCredential);
```
