import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GreetingPage(user: snapshot.data as FirebaseUser);
            } else {
              return SignInPage(title: 'Apple Sign In Firebase Demo');
            }
          }),
    );
  }
}

class GreetingPage extends StatelessWidget {
  final FirebaseUser _user;

  GreetingPage({FirebaseUser user}) : _user = user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greetings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('display name: ${_user.displayName}'),
            Text('email: ${_user.email}'),
            Text('provider id: ${_user.providerId}'),
            MaterialButton(
                child: Text('Sign Out'),
                color: Colors.lightGreen,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                })
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget {
  SignInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String _stateDescription = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_stateDescription',
            ),
            SignInWithAppleButton(
              onPressed: () async {
                final appleIdCredential =
                    await SignInWithApple.getAppleIDCredential(
                  scopes: [
                    AppleIDAuthorizationScopes.email,
                    AppleIDAuthorizationScopes.fullName,
                  ],
                  webAuthenticationOptions: WebAuthenticationOptions(
                    clientId: <CLIENT_ID>,
                    redirectUri: Uri.parse(
                      <REDIRECT_URI>,
                    ),
                  ),
                );

                // get an OAuthCredential
                final credential =
                    OAuthProvider(providerId: 'apple.com').getCredential(
                  idToken: appleIdCredential.identityToken,
                  accessToken: appleIdCredential.authorizationCode,
                );

                // use the credential to sign in to firebase
                await FirebaseAuth.instance.signInWithCredential(credential);
              },
            )
          ],
        ),
      ),
    );
  }
}
