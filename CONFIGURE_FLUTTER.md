Use the Service Id and Redirect Uri to setup the call to SignInWithApple:

```Dart
SignInWithApple.getAppleIDCredential(
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