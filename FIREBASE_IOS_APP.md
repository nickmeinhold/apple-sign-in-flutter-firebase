# Create an iOS app

Either follow [Add Firebase to your Flutter app > iOS](https://firebase.google.com/docs/flutter/setup?platform=ios) or do the following: 

Hit the new iOS app button 

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84113221-8c496980-aa6d-11ea-9660-4716c138f3f2.png"></kbd>

Enter your bundle id 
- one place to find this is in `ios/Runner.xcodeproj/project.pbxproj`, under `PRODUCT_BUNDLE_IDENTIFIER` 
- choose a nickname 
- you can leave the App Store ID blank 
- hit Register app

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84113239-910e1d80-aa6d-11ea-9e6e-809d422da3ac.png"></kbd>

Download the file 

<kbd><img width="400" src="https://user-images.githubusercontent.com/1059276/84113566-2dd0bb00-aa6e-11ea-9589-2c08017efa67.png"></kbd>

hit Next to skip through the rest 

You can add `GoogleService-Info.plist` to the project at `ios/Runner`, but it's better to open XCode and move the file into the `Runner/Runner` section so the change gets picks up and added to the `project.pbxproj` file.

Remember to add the file to `.gitignore` 
