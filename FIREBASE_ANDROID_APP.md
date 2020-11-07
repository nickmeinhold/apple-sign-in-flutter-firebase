# Create an iOS app

Either follow [Add Firebase to your Flutter app > Android](https://firebase.google.com/docs/flutter/setup?platform=android) or just do the following: 

Hit the new Android app button 

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84125509-fd921800-aa7f-11ea-8f9a-d5cb7107543d.png"></kbd>
<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84125520-fff47200-aa7f-11ea-8a5d-c3f89e0c3255.png"></kbd>

Enter your package name
- one place to find this is in `android/app/biuld.gradle`, under `applicationId` 
- choose a nickname 
- you can leave the Debug Signing certificate blank 
- hit Register app

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84125528-0256cc00-aa80-11ea-8a6c-9bbc8fa02372.png"></kbd>

Download the file 

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84152754-65f4ef80-aaa8-11ea-9d0f-2a54dbb4ffb2.png"></kbd>

Hit Next to skip through the rest 

You can add `google-services.json` to the project at `android/app`.

Remember to add the file to `.gitignore` 
