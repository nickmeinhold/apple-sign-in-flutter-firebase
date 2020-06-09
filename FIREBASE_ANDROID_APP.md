# Create an iOS app

Either follow [Add Firebase to your Flutter app > Android](https://firebase.google.com/docs/flutter/setup?platform=android) or just do the following: 

Hit the new Android app button 

<img width="630" alt="Screen Shot 2020-06-09 at 4 34 45 pm" src="https://user-images.githubusercontent.com/1059276/84125509-fd921800-aa7f-11ea-8f9a-d5cb7107543d.png">
<img width="512" alt="Screen Shot 2020-06-09 at 4 35 30 pm" src="https://user-images.githubusercontent.com/1059276/84125520-fff47200-aa7f-11ea-8a5d-c3f89e0c3255.png">

Enter your package name
- one place to find this is in `android/app/biuld.gradle`, under `applicationId` 
- choose a nickname 
- you can leave the Debug Signing certificate blank 
- hit Register app

<img width="588" alt="Screen Shot 2020-06-09 at 4 36 56 pm" src="https://user-images.githubusercontent.com/1059276/84125528-0256cc00-aa80-11ea-8a6c-9bbc8fa02372.png">

Download the file 

<img width="704" alt="Screen Shot 2020-06-09 at 6 19 58 pm" src="https://user-images.githubusercontent.com/1059276/84152754-65f4ef80-aaa8-11ea-9d0f-2a54dbb4ffb2.png">

Hit Next to skip through the rest 

You can add `google-services.json` to the project at `android/app`.

Remember to add the file to `.gitignore` 
